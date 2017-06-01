/**
 * There are automatic code generation
 */
package ${packageName}.biz;

import ${packageName}.model.${ClassName};

/**
 * ${functionName}Biz
 * @author ${classAuthor}
 * @version ${classVersion}
 */
public interface ${ClassName}Biz {


     /**
     * 功能描述: 通过主键删除
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
	int deleteByPrimaryKey(String id);


	 /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int insertSelective(${ClassName} record);
	
	
	 /**
     * 功能描述:通过主键id查询对象
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    ${ClassName} selectByPrimaryKey(String id);


	 /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int updateByPrimaryKeySelective(${ClassName} record);
}
