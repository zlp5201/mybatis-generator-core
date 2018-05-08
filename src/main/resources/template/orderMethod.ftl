/**
 * There are automatic code generation
 */
package ${packageName}.api;

import com.xinguang.vly.core.base.Result;

/**
 * ${sysName}服务提供层
 * @author ${classAuthor}
 * @version ${classVersion}
 */
public interface ${ClassName}Service {

    @Autowired
    private ${ClassName}Biz ${className}Biz;

    @Autowired
    private ${ClassName}Mappper ${className}Mappper;


    ${comment}
    ${returnType} ${methodName}(${param});


    ${comment}
    @Override
    public ${returnType} ${methodName}(${param}) {
        return ${className}Mapper.${methodName}();
    }


    ${comment}
    Result<${returnType}> ${methodName}(${param});


    ${comment}
    @Override
    @DubboService(moduleName = "报表功能", defaultErrorCode = "100005", defaultErrorMsg = "查询夜核日报异常")
    public Result<${returnType}> ${methodName}(${param}) {
        ${returnType} result = ${className}Biz.${methodName}(record);
        return Result.success(result);
    }
}
