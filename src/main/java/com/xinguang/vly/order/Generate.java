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
public class Generate {
    
    private static Logger logger = LoggerFactory.getLogger(Generate.class);

    public static void main(String[] args) throws Exception {

        // ========== ↓↓↓↓↓↓ 执行前请修改参数，谨慎执行。↓↓↓↓↓↓ ====================
        // ========== ↓↓↓↓↓↓ 工程所在目录的各级目录名中不能有空格，句点等，比如 D:\Eclipse4.2\workspace\project 这里面的Eclipse4.2有句点是不行的。↓↓↓↓↓↓ ====================
        
        // 主要提供基本功能模块代码生成。
        // 目录生成结构：{packageName}/{moduleName}/{dao,entity,service,web}/{subModuleName}/{className}
        
        // packageName 包名，这里如果更改包名，请在applicationContext.xml和spring-mvc.xml中配置base-package、packagesToScan属性，来指定多个（共4处需要修改）。
        
        
        // ========== ↓↓↓↓↓↓ 执行前请修改参数，谨慎执行。↓↓↓↓↓↓ ==================== 
        String sysName = "賬戶流水日志";
        String moduleName = "AccountFlowLog";            // 模块名，例：sys
        
        
        
        
        String packageName = "com.ymm.key.customer";
        String subModuleName = "";            // 子模块名（可选） 
        String className = moduleName;            // 类名，例：user
        String classAuthor = "liping.zhang";        // 类作者，例：Hzmux
        String functionName = sysName;            // 功能名，例：用户
        // ========== ↑↑↑↑↑↑ 执行前请修改参数，谨慎执行。↑↑↑↑↑↑ ====================
        
        
        
        URL url = Generate.class.getResource("/");
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

        // 生成 Entity
        Template template = null;
        
        
        String content = "";
        String filePath = "";
//        
        // 生成 Repository
        template = cfg.getTemplate("repository.ftl");
        content = FreeMarkers.renderTemplate(template, model);
        filePath =  outputPath + separator + model.get("ClassName")+"Repository.java";
        writeFile(content, filePath);
        logger.info("biz: {}", filePath);
        
        // 生成 RepositoryImpl
        template = cfg.getTemplate("repositoryImpl.ftl");
        content = FreeMarkers.renderTemplate(template, model);
        filePath =  outputPath + separator + model.get("ClassName")+"RepositoryImpl.java";
        writeFile(content, filePath);
        logger.info("bizImpl: {}", filePath);
        
        
        // 生成 service
        template = cfg.getTemplate("service.ftl");
        content = FreeMarkers.renderTemplate(template, model);
        filePath =  outputPath + separator + model.get("ClassName")+"Service.java";
        writeFile(content, filePath);
        logger.info("biz: {}", filePath);
        
        
        // 生成 serviceImpl
        template = cfg.getTemplate("serviceImpl.ftl");
        content = FreeMarkers.renderTemplate(template, model);
        filePath =  outputPath + separator + model.get("ClassName")+"ServiceImpl.java";
        writeFile(content, filePath);
        logger.info("bizImpl: {}", filePath);
        
      
        
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
