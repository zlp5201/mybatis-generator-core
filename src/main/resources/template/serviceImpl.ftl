/**
 * There are automatic code generation
 */
package ${packageName}.api.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.commons.lang3.StringUtils;
import com.xinguang.vly.order.utils.JsonUtil;
import org.springframework.stereotype.Service;
import com.xinguang.vly.order.dto.CollectionInput;
import com.xinguang.vly.core.exception.BizException;
import ${packageName}.biz.${ClassName}Biz;
import ${packageName}.model.${ClassName};
import ${packageName}.api.${ClassName}Service;
import com.xinguang.vly.core.base.Result;
import com.xinguang.vly.core.log.SystemTraceLog;
import com.xinguang.vly.core.log.SystemTraceLogFactory;

/**
 * ${functionName}ServiceImpl
 * @author ${classAuthor}
 * @version ${classVersion}
 */
@Service("${className}Service")
public class ${ClassName}ServiceImpl implements ${ClassName}Service {

    protected SystemTraceLog logger = SystemTraceLogFactory.getSystemLogTrace(this.getClass());

    private String moduleName = "${moduleName}";
    
    @Autowired
    private ${ClassName}Biz ${className}Biz;

     /**
     * 功能描述: 通过主键删除
     *
     * @param record 主键id包含的实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public Result<Boolean> delete${ClassName}ById(${ClassName} record) {
        try 
        {
            if (record == null || StringUtils.isEmpty(record.getId())) {
                logger.error(moduleName, "delete${ClassName}ById", "错误信息:入参不能为空");
                return Result.fail("10002", "入参不能为空");
            }
        
            logger.infoRpc(moduleName, "delete${ClassName}ById", "入参{}", JsonUtil.toJson(record));
            int iRet = ${className}Biz.delete${ClassName}ById(record.getId());
            if (iRet > 0) 
            {
                return Result.success();
            }
            return Result.fail("10002", "${ClassName}删除失败");
        } 
        catch (Exception e) 
        {
            logger.errorRpc(moduleName, "delete${ClassName}ByById", "${ClassName}删除失败", e);
            return Result.fail("10002", "${ClassName}删除失败");
        }
    }


     /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public Result<Boolean> add${ClassName}(${ClassName} record) {
        try 
        {
            logger.infoRpc(moduleName, "add${ClassName}", "入参{}", JsonUtil.toJson(record));
            int iRet = ${className}Biz.add${ClassName}(record);
            if (iRet > 0) 
            {
                return Result.success();
            }
            return Result.fail("10001", "${ClassName}增加失败");
        } 
        catch (Exception e) 
        {
            logger.errorRpc(moduleName, "add${ClassName}", "${ClassName}删除失败", e);
            return Result.fail("10001", "${ClassName}增加失败");
        }
    }
    
    
     /**
     * 功能描述:通过主键id查询对象
     *
     * @param record 主键id包含的实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public Result<${ClassName}> query${ClassName}ById(${ClassName} record) {
        try 
        {   
            if (record == null || StringUtils.isEmpty(record.getId())) {
                logger.error(moduleName, "query${ClassName}ById", "错误信息:入参不能为空");
                return Result.fail("10004", "入参不能为空");
            }
            
            logger.infoRpc(moduleName,"query${ClassName}ById", "入参{}", JsonUtil.toJson(record));
            ${ClassName} qryResult = ${className}Biz.query${ClassName}ById(record.getId());
            if (qryResult != null) 
            {
                return Result.success(qryResult);
            }
            return Result.fail("10004", "${ClassName}查询失败");
        } 
        catch (Exception e) 
        {
            logger.errorRpc(moduleName, "query${ClassName}ById", "${ClassName}删除失败", e);
            return Result.fail("10004", "${ClassName}查询失败");
        }
    }


     /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public Result<Boolean> modify${ClassName}ById(${ClassName} record) {
        try 
        {
            logger.debugRpc(moduleName,"modify${ClassName}ById", "入参{}", JsonUtil.toJson(record));
            int iRet = ${className}Biz.modify${ClassName}ById(record);
            if (iRet > 0) 
            {
                return Result.success();
            }
            return Result.fail("10003", "${ClassName}更新失败");
        } 
        catch (Exception e) 
        {
            logger.errorRpc(moduleName, "modify${ClassName}ById", "${ClassName}更新失败", e);
            return Result.fail("10003", "${ClassName}更新失败");
        }
    }
    
    
    /**
     * 功能描述: 订单关闭
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public Result<Boolean> close(${ClassName} record, String closeReason) {
        try 
        {
            logger.debugRpc(moduleName,"close", "入参{}", JsonUtil.toJson(record));
            boolean isSucess = ${className}Biz.close(record, closeReason);
            if (isSucess) 
            {
                return Result.success();
            }
            return Result.fail("10005", "${ClassName}关闭失败");
        } catch (BizException e) {
            return Result.failArgs(e.getCode(), e.getMessage());
        }
        catch (Exception e) 
        {
            logger.errorRpc(moduleName, "close", "${ClassName}关闭失败", e);
            return Result.fail("10005", "${ClassName}关闭失败");
        }
    }
}
