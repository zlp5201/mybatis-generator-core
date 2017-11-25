/**
 * There are automatic code generation
 */
package ${packageName}.api;

import com.xinguang.vly.core.base.Result;
import com.xinguang.vly.order.dto.CollectionInput;
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
    Result<Boolean> delete${ClassName}ById(${ClassName} record);


     /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<Boolean> add${ClassName}(${ClassName} record);

    
     /**
     * 功能描述:通过主键id查询对象
     *
     * @param record 主键id包含的实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<${ClassName}> query${ClassName}ById(${ClassName} record);


     /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<Boolean> modify${ClassName}ById(${ClassName} record);
    
    
    /**
     * 功能描述: 订单关闭
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<Boolean> close(${ClassName} record, String closeReason);
    
       
   /**
   * 功能描述:通过主键id查询订单详情
   *
   * @param orderInfo 支持id和orderNo
   * @see [相关类/方法](可选)
   * @since [产品/模块版本](可选)
   */
   Result<OrderBookingDetailInfoOutputDto> getDetailInfo(${ClassName} record);
   
   
   /**
     * 功能描述: 收款
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    Result<Boolean> collection(CollectionInput record);
}
