/**
 * There are automatic code generation
 */
package ${packageName}.mapper;

import org.springframework.stereotype.Repository;
import ${packageName}.model.${ClassName};


/**
 * ${functionName}Mapper接口
 * @author ${classAuthor}
 * @version ${classVersion}
 */
@MyBatisMapper
@Repository
public interface ${ClassName}Mapper {
	
	 /**
     * 功能描述:
     * 〈功能详细描述〉
     *
     * @param
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
	int deleteByPrimaryKey(String id);

	 /**
     * 功能描述:
     * 〈功能详细描述〉
     *
     * @param
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int insert(OrderInfo record);
	
	 /**
     * 功能描述:
     * 〈功能详细描述〉
     *
     * @param
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int insertSelective(OrderInfo record);

	 /**
     * 功能描述:
     * 〈功能详细描述〉
     *
     * @param
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    OrderInfo selectByPrimaryKey(String id);

	 /**
     * 功能描述:
     * 〈功能详细描述〉
     *
     * @param
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int updateByPrimaryKeySelective(OrderInfo record);

	 /**
     * 功能描述:
     * 〈功能详细描述〉
     *
     * @param
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int updateByPrimaryKey(OrderInfo record);
}
