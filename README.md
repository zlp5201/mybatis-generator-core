# mybatis-generator-core
基于官方提供的mybatis-generator-core进行定制
1.3.5版本

更新：
使用方法

1.把源码下到eclipse中。
2.修改配置文件：/src/main/resources/generate.xml
3.打开程序入口（main方法）：/org/mybatis/generator/api/ShellRunner.java。
4.配置运行参数（configfile配置的是generate.xml文件位置）：-configfile D:\generator\mybatis-generator-core\src\main\java\com\xinguang\vly\order\generatorConfig.xml -overwrite
