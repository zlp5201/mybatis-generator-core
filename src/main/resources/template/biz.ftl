/**
 * There are automatic code generation
 */
package ${packageName}.biz;
import com.xinguang.vly.order.dto.CollectionInput;
import com.xinguang.vly.core.exception.BizException;
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
	int delete${ClassName}ById(String id);


	 /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int add${ClassName}(${ClassName} record);
	
	
	 /**
     * 功能描述:通过主键id查询对象
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    ${ClassName} query${ClassName}ById(String id);


	 /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    int modify${ClassName}ById(${ClassName} record);
    
        
    
    /**
     * 功能描述: 订单关闭
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Boolean close(OrderPaymentInfo record, String closeReason);
    
    
    /**
     * 功能描述: 收款
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Boolean collection(CollectionInput record) throws Exception;
}
