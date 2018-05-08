/*
 * Copyright (C), 2010-2017, 未来域
 * FileName: FreeMarkerUtil.java
 * Author:   DELL
 * Date:     2017-6-9 上午11:47:18
 */
package com.xinguang.vly.order;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import com.xinguang.vly.utils.FileUtils;

import freemarker.cache.StringTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * 〈一句话功能简述〉<br> 
 * 〈功能详细描述〉
 *
 * @author DELL
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class FreeMarkerUtil
 {

    public static String generateHtml(Object rootMap, String filePath) {
        Configuration cfg = new Configuration();
        cfg.setServletContextForTemplateLoading(FreeMarkerUtil.class,
                "/template");
        cfg.setObjectWrapper(new DefaultObjectWrapper());
        cfg.setDefaultEncoding("utf-8");
        cfg.setDateFormat("yyyy-MM-dd");
        cfg.setDateTimeFormat("yyyy-MM-dd HH:mm:ss");
        cfg.setLocale(Locale.CHINESE);
        StringWriter sw = new StringWriter();
        try {
            Template template = cfg.getTemplate(filePath);
            template.process(rootMap, sw);
        } catch (IOException e) {
        } catch (TemplateException e) {
        }
        return sw.toString();
    }

    public static String formatTemplateByMap(Object rootMap, String templateContent) {
        Configuration cfg = new Configuration();
        StringTemplateLoader stringLoader = new StringTemplateLoader();
        stringLoader.putTemplate("stringTemplate", templateContent);
        cfg.setDefaultEncoding("utf-8");
        cfg.setDateFormat("yyyy-MM-dd");
        cfg.setDateTimeFormat("yyyy-MM-dd HH:mm:ss");
        cfg.setLocale(Locale.CHINESE);
        StringWriter sw = new StringWriter();
        try {
            cfg.setTemplateLoader(stringLoader);
            Template template = cfg.getTemplate("stringTemplate", "utf-8");
            template.process(rootMap, sw);
        } catch (IOException e) {
        } catch (TemplateException e) {
        }
        return sw.toString();
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
    
    public static void main(String[] args) throws Exception {
        String template = "尊敬的${touristName}，您的咨询订单已生成， ${startDate}${startCity}出发的${productName}，${adultCount}位成人，<#if childCount?exists&&childCount&gt;0>${childCount}位儿童，</#if>订单号${orderId}，正在核实位置中，请等待专属客服与您联系。请确保您已知晓特殊人群接待政策（详见产品预订提示）。点击 t.cn/8FpyI4G 下载App，手机付款安全快捷。韩国方向旅游产品预订成功后登陆途牛App，可以申请0元wifi服务。境外购物，回国退税。详情点击：http://t.cn/R7jWtKO。";

        URL url = Generate.class.getResource("/");
        String basePath = url.getPath();
        String webProjectPathstr = basePath;

        // 获取文件分隔符
        String separator = File.separator;

        // while(!new File(projectPath.getPath()+separator+"src").exists()){
        // projectPath = projectPath.getParentFile();
        // }
        System.out.println("Project Path: " + webProjectPathstr);

        // // 模板文件路径
        // /src/main/java/com/xinguang/futuredomain/impl/generate/template
        String tplPath = webProjectPathstr + "template/vly_dfd.ftl";
        BufferedInputStream in = null;
        // 模板文件
        File file = new File(tplPath);
        // 构造输入流
        in = new BufferedInputStream(new FileInputStream(file));
        int len;
        byte[] bytes = new byte[1024];
        // 模板内容
        StringBuilder content = new StringBuilder();
        while ((len = in.read(bytes)) != -1) {
            content.append(new String(bytes, 0, len, "utf-8"));
        }

        Map map = new HashMap();
        map.put("company_name", "南京");
        map.put("store", "雨花台");
        map.put("room_no", "401");
        
        map.put("contract_name", "zhangliping");
        map.put("contract_phone", "18512542148");
        map.put("rent_price", "2770");
        map.put("yajin", 100);
        map.put("remark", "我只是测试用的");
        
        String contentnew = formatTemplateByMap(map, content.toString());
        
        writeFile(contentnew, "D://11.html");
    }
}