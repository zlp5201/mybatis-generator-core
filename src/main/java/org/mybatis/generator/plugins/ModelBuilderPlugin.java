/*
 * Copyright (c) 2017.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.mybatis.generator.plugins;

import java.util.List;

import org.mybatis.generator.api.IntrospectedColumn;
import org.mybatis.generator.api.IntrospectedTable;
import org.mybatis.generator.api.dom.java.Field;
import org.mybatis.generator.api.dom.java.InnerClass;
import org.mybatis.generator.api.dom.java.JavaVisibility;
import org.mybatis.generator.api.dom.java.Method;
import org.mybatis.generator.api.dom.java.Parameter;
import org.mybatis.generator.api.dom.java.TopLevelClass;
import org.mybatis.generator.internal.util.JavaBeansUtil;
import org.mybatis.generator.plugins.utils.BasePlugin;
import org.mybatis.generator.plugins.utils.JavaElementGeneratorTools;

/**
 * ---------------------------------------------------------------------------
 * 增加Model Builder方法
 * ---------------------------------------------------------------------------
 * @author: hewei
 * @time:2016/12/28 14:56
 * ---------------------------------------------------------------------------
 */
public class ModelBuilderPlugin extends BasePlugin {
    public static final String BUILDER_CLASS_NAME = "Builder";  // Builder 类名

    /**
     * Model Methods 生成
     * 具体执行顺序 http://www.mybatis.org/generator/reference/pluggingIn.html
     * @param topLevelClass
     * @param introspectedTable
     * @return
     */
    @Override
    public boolean modelBaseRecordClassGenerated(TopLevelClass topLevelClass, IntrospectedTable introspectedTable) {
        // 判断是否有生成Model的WithBLOBs类
        List<IntrospectedColumn> columns = introspectedTable.getRules().generateRecordWithBLOBsClass() ? introspectedTable.getNonBLOBColumns() : introspectedTable.getAllColumns();
        InnerClass innerClass = this.generateModelBuilder(topLevelClass, introspectedTable, columns);
        topLevelClass.addInnerClass(innerClass);
        return true;
    }

    /**
     * Model Methods 生成
     * 具体执行顺序 http://www.mybatis.org/generator/reference/pluggingIn.html
     * @param topLevelClass
     * @param introspectedTable
     * @return
     */
    @Override
    public boolean modelRecordWithBLOBsClassGenerated(TopLevelClass topLevelClass, IntrospectedTable introspectedTable) {
        InnerClass innerClass = this.generateModelBuilder(topLevelClass, introspectedTable, introspectedTable.getAllColumns());
        topLevelClass.addInnerClass(innerClass);
        return true;
    }

    /**
     * 生成ModelBuilder
     *
     * @param topLevelClass
     * @param introspectedTable
     * @param columns
     * @return
     */
    private InnerClass generateModelBuilder(TopLevelClass topLevelClass, IntrospectedTable introspectedTable, List<IntrospectedColumn> columns){
        // 生成内部Builder类
        InnerClass innerClass = new InnerClass(BUILDER_CLASS_NAME);
        innerClass.setVisibility(JavaVisibility.PUBLIC);
        innerClass.setStatic(true);
        commentGenerator.addClassComment(innerClass, introspectedTable);
        logger.debug("itfsw(数据Model链式构建插件):" + topLevelClass.getType().getShortName() + "增加内部Builder类。");

        // 构建内部obj变量
        Field f = JavaElementGeneratorTools.generateField("obj", JavaVisibility.PRIVATE, topLevelClass.getType(), null);
        commentGenerator.addFieldComment(f, introspectedTable);
        innerClass.addField(f);

        // 构造构造方法
        Method constructor = new Method(BUILDER_CLASS_NAME);
        constructor.setVisibility(JavaVisibility.PUBLIC);
        constructor.setConstructor(true);
        constructor.addBodyLine(new StringBuilder("this.obj = new ").append(topLevelClass.getType().getShortName()).append("();").toString());
        commentGenerator.addGeneralMethodComment(constructor, introspectedTable);
        innerClass.addMethod(constructor);
        logger.debug("itfsw(数据Model链式构建插件):" + topLevelClass.getType().getShortName() + ".Builder增加的构造方法。");

        for (IntrospectedColumn introspectedColumn : columns) {
            Field field = JavaBeansUtil.getJavaBeansField(introspectedColumn, context, introspectedTable);
            Method setterMethod = JavaBeansUtil.getJavaBeansSetter(introspectedColumn, context, introspectedTable);

            Method method = JavaElementGeneratorTools.generateMethod(
                    field.getName(),
                    JavaVisibility.PUBLIC,
                    innerClass.getType(),
                    new Parameter(field.getType(), field.getName())
            );
            commentGenerator.addSetterComment(method, introspectedTable, introspectedColumn);
            method = JavaElementGeneratorTools.generateMethodBody(
                    method,
                    "obj." + setterMethod.getName() + "(" + field.getName() + ");",
                    "return this;"
            );
            innerClass.addMethod(method);
            logger.debug("itfsw(数据Model链式构建插件):" + topLevelClass.getType().getShortName() + ".Builder增加" + method.getName() + "方法(复合主键)。");
        }

        Method build = JavaElementGeneratorTools.generateMethod(
                "build",
                JavaVisibility.PUBLIC,
                topLevelClass.getType()
        );
        build.addBodyLine("return this.obj;");
        commentGenerator.addGeneralMethodComment(build, introspectedTable);
        innerClass.addMethod(build);

        logger.debug("itfsw(数据Model链式构建插件):" + topLevelClass.getType().getShortName() + ".Builder增加build方法。");

        return innerClass;
    }
}
