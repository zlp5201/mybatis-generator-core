/**
 * There are automatic code generation
 */
package ${packageName}.repository.impl;

import org.springframework.beans.factory.annotation.Autowired;
import com.ymm.key.customer.biz.repository.${ClassName}Repository;
import com.ymm.key.customer.biz.entity.${ClassName}Entity;
import com.ymm.key.customer.biz.dao.${ClassName}DAO;

/**
 * ${functionName}RepositoryImpl
 * @author ${classAuthor}
 * @version ${classVersion}
 */
@Repository
public class ${ClassName}RepositoryImpl implements ${ClassName}Repository {

    
    @Autowired
    private ${ClassName}DAO dao;


     /**
     * 功能描述: 通过主键删除
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    public int delete${ClassName}ById(String id) {
        return dao.deleteByPrimaryKey(id);
    }
    

     /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public int add${ClassName}(${ClassName}Entity record) {
        return dao.insertSelective(record);
    }


     /**
     * 功能描述:通过主键id查询对象
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public ${ClassName}Entity query${ClassName}ById(String id) {
        return dao.selectByPrimaryKey(id);
    }


     /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public int modify${ClassName}ById(${ClassName}Entity record) {
        return dao.updateByPrimaryKeySelective(record);
    }
}
