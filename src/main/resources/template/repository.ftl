/**
 * There are automatic code generation
 */
package com.ymm.key.customer.biz.repository;
import com.ymm.key.customer.biz.entity.${ClassName}Entity;

/**
 * ${functionName}Repository
 * @author ${classAuthor}
 * @version ${classVersion}
 */
public interface ${ClassName}Repository {


     /**
     * 功能描述: 通过主键删除
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
	int delete${ClassName}ById(String id);


	 /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int add${ClassName}(${ClassName}Entity record);
	
	
	 /**
     * 功能描述:通过主键id查询对象
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    ${ClassName}Entity query${ClassName}ById(String id);


	 /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int modify${ClassName}ById(${ClassName}Entity record);
}
