/*
 * Copyright (C), 2010-2018, 未来域
 * FileName: Demo.java
 * Author:   DELL
 * Date:     2018-1-31 下午2:31:36
 */
package com.xinguang.vly.order;

import javassist.ClassPool;
import javassist.CtClass;
import javassist.CtMethod;
import javassist.Modifier;
import javassist.NotFoundException;
import javassist.bytecode.CodeAttribute;
import javassist.bytecode.LocalVariableAttribute;
import javassist.bytecode.MethodInfo;

/**
 * 〈一句话功能简述〉<br> 
 * 〈功能详细描述〉
 *
 * @author DELL
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class Demo {
    
    public String getInfoById(String id, Integer aa) {
        return "";
    }
    
//    public static void main(String[] args) {
//        Class clazz = Demo.class;
//        try {
//            ClassPool pool = ClassPool.getDefault();
//            CtClass cc = pool.get(clazz.getName());
//            CtMethod cm = cc.getDeclaredMethod("getInfoById");
//
//            // 使用javaassist的反射方法获取方法的参数名
//            MethodInfo methodInfo = cm.getMethodInfo();
//            CodeAttribute codeAttribute = methodInfo.getCodeAttribute();
//            LocalVariableAttribute attr = (LocalVariableAttribute) codeAttribute
//                    .getAttribute(LocalVariableAttribute.tag);
//            if (attr == null) {
//                // exception
//            }
//            String[] paramNames = new String[cm.getParameterTypes().length];
//            int pos = Modifier.isStatic(cm.getModifiers()) ? 0 : 1;
//            for (int i = 0; i < paramNames.length; i++)
//                paramNames[i] = attr.variableName(i + pos);
//            // paramNames即参数名
//            for (int i = 0; i < paramNames.length; i++) {
//                System.out.println(paramNames[i]);
//            }
//        } catch (NotFoundException e) {
//            e.printStackTrace();
//        }
//    }
}
