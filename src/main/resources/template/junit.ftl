/**
 * There are automatic code generation
 */
package ${packageName}.api;

import org.junit.Test;
import org.junit.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import com.xinguang.vly.core.base.Result;
import ${packageName}.model.${ClassName};
import test.TestBase;

/**
 * ${sysName}服务提供层单元测试类
 * ${functionName}ServiceTest
 * @author ${classAuthor}
 * @version ${classVersion}
 */
public class ${ClassName}ServiceTest extends TestBase {

    @Autowired
    ${ClassName}Service ${className}Service;


     /**
     * 功能描述: 通过主键删除
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Test
    public void testDeleteByPrimaryKey() {

        ${ClassName} record = new ${ClassName}();
        // TODO Auto-generated method stub
        record.setId("uuid");

        Result<Boolean> result = ${className}Service.deleteByPrimaryKey(record);
        if (result != null && result.isSuccess()) {
           Assert.assertSame(result.getData(), true);
       }
    }
    
    
    /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Test
    public void testInsertSelective() {

        ${ClassName} record = new ${ClassName}();
        // TODO Auto-generated method stub
        record.setId("uuid");

        Result<Boolean> result = ${className}Service.insertSelective(record);
        if (result != null && result.isSuccess()) {
           Assert.assertSame(result.getData(), true);
       }
    }
    
    
    /**
     * 功能描述:通过主键id查询对象
     *
     * @param record 主键id包含的实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Test
    public void testSelectByPrimaryKey() {

        ${ClassName} record = new ${ClassName}();
        // TODO Auto-generated method stub
        record.setId("uuid");

        Result<${ClassName}> result = ${className}Service.selectByPrimaryKey(record);
        if (result != null && result.isSuccess()) {
           Assert.assertNotNull(result.getData());
       }
    }
    
    
    /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Test
    public void testUpdateByPrimaryKeySelective() {

        ${ClassName} record = new ${ClassName}();
        // TODO Auto-generated method stub
        record.setId("uuid");

        Result<Boolean> result = ${className}Service.updateByPrimaryKeySelective(record);
        if (result != null && result.isSuccess()) {
           Assert.assertSame(result.getData(), true);
       }
    }
}
