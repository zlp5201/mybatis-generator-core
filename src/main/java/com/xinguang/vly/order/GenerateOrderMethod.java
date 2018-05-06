package com.xinguang.vly.order;

/**
 * Copyright &copy; 2012-2013 <a href="http://www.hzmux.com">hzmux</a> All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javassist.ClassPool;
import javassist.CtClass;
import javassist.CtMethod;
import javassist.Modifier;
import javassist.bytecode.CodeAttribute;
import javassist.bytecode.LocalVariableAttribute;
import javassist.bytecode.MethodInfo;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.xinguang.vly.utils.DateUtils;
import com.xinguang.vly.utils.FileUtils;
import com.xinguang.vly.utils.FreeMarkers;

import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * 代码生成器
 */
public class GenerateOrderMethod {
    
    private static Logger logger = LoggerFactory.getLogger(GenerateOrderMethod.class);

    public static void main(String[] args) throws Exception {

        // ========== ↓↓↓↓↓↓ 执行前请修改参数，谨慎执行。↓↓↓↓↓↓ ====================
        // ========== ↓↓↓↓↓↓ 工程所在目录的各级目录名中不能有空格，句点等，比如 D:\Eclipse4.2\workspace\project 这里面的Eclipse4.2有句点是不行的。↓↓↓↓↓↓ ====================
        
        // 主要提供基本功能模块代码生成。
        // 目录生成结构：{packageName}/{moduleName}/{dao,entity,service,web}/{subModuleName}/{className}
        
        // packageName 包名，这里如果更改包名，请在applicationContext.xml和spring-mvc.xml中配置base-package、packagesToScan属性，来指定多个（共4处需要修改）。
        
        
        // ========== ↓↓↓↓↓↓ 执行前请修改参数，谨慎执行。↓↓↓↓↓↓ ==================== 
        String packageName = "com.xinguang.vly.bill";
        String sysName = "企业账单记录表";
        String moduleName = "BusinessAdvanceBill";            // 模块名，例：sys
        String subModuleName = "";            // 子模块名（可选） 
        String className = "BusinessAdvanceBill";            // 类名，例：user
        String classAuthor = "zhanglp";        // 类作者，例：Hzmux
        String functionName = "企业账单记录表";            // 功能名，例：用户
        // ========== ↑↑↑↑↑↑ 执行前请修改参数，谨慎执行。↑↑↑↑↑↑ ====================
        
        
        
        
        
        
        
        
        
        URL url = GenerateOrderMethod.class.getResource("/");
        String basePath = url.getPath();
        String webProjectPathstr = basePath;
        
        
        File directory = new File("");//参数为空 
        String courseFile = directory.getCanonicalPath() ; 
        String outputPath = courseFile + File.separator + "src/main/java" + File.separator + "output";

        // 是否启用生成工具
        //Boolean isEnable = false;
        Boolean isEnable = true;


        if (!isEnable){
            logger.error("请启用代码生成工具，设置参数：isEnable = true");
            return;
        }
        
        if (StringUtils.isBlank(moduleName) || StringUtils.isBlank(moduleName) 
                || StringUtils.isBlank(className) || StringUtils.isBlank(functionName)){
            logger.error("参数设置错误：包名、模块名、类名、功能名不能为空。");
            System.out.println("参数设置错误：包名、模块名、类名、功能名不能为空。");
            return;
        }
        
        // 获取文件分隔符
        String separator = File.separator;
        
        // 获取工程路径
//        File projectPath = new DefaultResourceLoader().getResource("/").getFile();
        File webprojectPath = new File(webProjectPathstr);
        File implprojecPath = new File(outputPath);
//        while(!new File(projectPath.getPath()+separator+"src").exists()){
//            projectPath = projectPath.getParentFile();
//        }
        System.out.println("Project Path: "+ webprojectPath);
        System.out.println("Project Path: "+ implprojecPath);

//        // 模板文件路径 /src/main/java/com/xinguang/futuredomain/impl/generate/template
        String tplPath = StringUtils.replace(webprojectPath+"/template", "/", separator);
        
        
//        logger.info("Template Path: {}", tplPath);
//        
//        // Java文件路径
//        String webjavaPath = StringUtils.replaceEach(webprojectPath+"/src/main/java/"+StringUtils.lowerCase(packageName), new String[]{"/", "."}, new String[]{separator, separator});
//        String outputPath = StringUtils.replaceEach(implprojecPath+"/src/main/java/"+StringUtils.lowerCase(packageName), new String[]{"/", "."}, new String[]{separator, separator})
//                +separator+ "impl" +separator + "modules";
//        logger.info("Java Path: {}", webjavaPath);
//        logger.info("Java Path: {}", outputPath);
//
//        // 视图文件路径
//        String viewPath = StringUtils.replace(webprojectPath+"/src/main/webapp/WEB-INF/views", "/", separator);
//        logger.info("View Path: {}", viewPath);
//        
        // 代码模板配置
        Configuration cfg = new Configuration();
        cfg.setDefaultEncoding("UTF-8");
        cfg.setDirectoryForTemplateLoading(new File(tplPath));

        // 定义模板变量
        Map<String, String> model = new HashMap<String, String> ();
        model.put("sysName", StringUtils.lowerCase(sysName));
        model.put("packageName", StringUtils.lowerCase(packageName));
        model.put("moduleName", StringUtils.lowerCase(moduleName));
        model.put("subModuleName", StringUtils.isNotBlank(subModuleName)?"."+StringUtils.lowerCase(subModuleName):"");
        model.put("className", StringUtils.uncapitalize(className));
        model.put("ClassName", StringUtils.capitalize(className));
        model.put("classAuthor", StringUtils.isNotBlank(classAuthor)?classAuthor:"Generate Tools");
        model.put("classVersion", DateUtils.getDate());
        model.put("functionName", functionName);
        model.put("urlPrefix", model.get("moduleName")+(StringUtils.isNotBlank(subModuleName)
                ?"/"+StringUtils.lowerCase(subModuleName):"")+"/"+model.get("className"));
        model.put("viewPrefix", //StringUtils.substringAfterLast(model.get("packageName"),".")+"/"+
                model.get("urlPrefix"));
        model.put("permissionPrefix", model.get("moduleName")+(StringUtils.isNotBlank(subModuleName)
                ?":"+StringUtils.lowerCase(subModuleName):"")+":"+model.get("className"));

        
        
        
        
        String returnType = "";
        String methodName = "";
        StringBuilder paramStr = new StringBuilder();
        StringBuilder commentBuild = new StringBuilder();
        String comment = commentBuild.append("/**")
                .append("\n\t")
                .append("* 功能描述: 通过主键删除")
                .append("\n\t")
                .append("*")
                .append("\n\t")
                .append("* @param record 主键id包含的实体类")
                .append("\n\t")
                .append("* @see [相关类/方法](可选)")
                .append("\n\t")
                .append("* @since [产品/模块版本](可选)")
                .append("\n\t")
                .append("*/").toString();
//        String 
        
        
        
//        Method[] method = Demo.class.getDeclaredMethods();
        
        ClassPool pool = ClassPool.getDefault();
        CtClass cc = pool.get(Demo.class.getName());
        CtMethod[] method = cc.getDeclaredMethods();
        
//        CtMethod cm = cc.getDeclaredMethod("getInfoById");
        
        
        for (CtMethod method2 : method) {
            methodName = method2.getName();
            returnType = method2.getReturnType().getSimpleName();
            
            MethodInfo methodInfo = method2.getMethodInfo();
            
            CodeAttribute codeAttribute = methodInfo.getCodeAttribute();
            LocalVariableAttribute attr = (LocalVariableAttribute) codeAttribute
                    .getAttribute(LocalVariableAttribute.tag);
            if (attr == null) {
                // exception
            }
            String[] paramNames = new String[method2.getParameterTypes().length];
            int pos = Modifier.isStatic(method2.getModifiers()) ? 0 : 1;
            for (int i = 0; i < paramNames.length; i++) {
                paramNames[i] = attr.variableName(i + pos);
                System.out.println(attr.getName());
                paramStr.append(paramNames[i]).append(", ");
            }
            
            
            
            // paramNames即参数名
            for (int i = 0; i < paramNames.length; i++) {
                System.out.println(paramNames[i]);
            }
            
//            for (Class class1 : paramTypes) {
//                System.out.println(class1.getSimpleName());
//                paramStr.append(class1.getSimpleName())
//                .append(" ").append("param").append(",");
//            }
            // 生成 Method
            Template template = cfg.getTemplate("orderMethod.ftl");
            
            
            
            
            
            model.put("methodName", methodName);
            model.put("returnType", returnType);
            model.put("comment", comment);
            model.put("param", paramStr.toString());
            String content = FreeMarkers.renderTemplate(template, model);
            String filePath = outputPath + separator + model.get("ClassName")+".java";
            
            writeFile(content, filePath);
        }
        
        
        
        
        logger.info("Generate Success.");
    }
    
    /**
     * 将内容写入文件
     * @param content
     * @param filePath
     */
    public static void writeFile(String content, String filePath) {
        try {
            File file = new File(filePath);
            if (file.exists()) {
                file.delete();
            }
            if (FileUtils.createFile(filePath)){
                FileOutputStream fos = new FileOutputStream(filePath);
                Writer writer = new OutputStreamWriter(fos,"UTF-8");
                BufferedWriter bufferedWriter = new BufferedWriter(writer);
                bufferedWriter.write(content);
                bufferedWriter.close();
                writer.close();
            }else{
//                logger.info("生成失败，文件已存在！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
