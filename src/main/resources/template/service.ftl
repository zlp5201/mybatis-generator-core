/**
 * There are automatic code generation
 */
package ${packageName}.api;

import com.xinguang.vly.core.base.Result;
import ${packageName}.model.${ClassName};

/**
 * ${sysName}服务提供层
 * @author ${classAuthor}
 * @version ${classVersion}
 */
public interface ${ClassName}Service {
	
     /**
     * 功能描述: 通过主键删除
     *
     * @param record 主键id包含的实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<Boolean> deleteByPrimaryKey(${ClassName} record);


     /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<Boolean> insertSelective(${ClassName} record);

    
     /**
     * 功能描述:通过主键id查询对象
     *
     * @param record 主键id包含的实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<${ClassName}> selectByPrimaryKey(${ClassName} record);


     /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<Boolean> updateByPrimaryKeySelective(${ClassName} record);
}
