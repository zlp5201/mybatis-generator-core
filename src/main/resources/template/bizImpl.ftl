/**
 * There are automatic code generation
 */
package ${packageName}.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${packageName}.biz.${ClassName}Biz;
import ${packageName}.model.${ClassName};
import ${packageName}.mapper.${ClassName}Mapper;

/**
 * ${functionName}BizImpl
 * @author ${classAuthor}
 * @version ${classVersion}
 */
@Service("${className}Biz")
public class ${ClassName}BizImpl implements ${ClassName}Biz {

    protected SystemTraceLog logger = SystemTraceLogFactory.getSystemLogTrace(this.getClass());
    
    @Autowired
    private ${ClassName}Mapper ${className}Mapper;


     /**
     * 功能描述: 通过主键删除
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    public int deleteByPrimaryKey(String id) {
        return ${className}Mapper.deleteByPrimaryKey(id);
    }
    

     /**
     * 功能描述: 新增插入表
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public int insertSelective(${ClassName} record) {
        return ${className}Mapper.insertSelective(record);
    }


     /**
     * 功能描述:通过主键id查询对象
     *
     * @param id 主键id
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public ${ClassName} selectByPrimaryKey(String id) {
        return ${className}Mapper.selectByPrimaryKey(id);
    }


     /**
     * 功能描述: 表对应实体类
     *
     * @param record 表对应实体类
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @Override
    public int updateByPrimaryKeySelective(${ClassName} record) {
        return ${className}Mapper.updateByPrimaryKeySelective(record);
    }
}
