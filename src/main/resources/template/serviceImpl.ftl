/**
 * There are automatic code generation
 */
package com.ymm.key.customer.biz.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${packageName}.biz.repository.${ClassName}repository;
import ${packageName}.biz.entity.${ClassName};
import ${packageName}.api.${ClassName}Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * ${functionName}ServiceImpl
 * @author ${classAuthor}
 * @version ${classVersion}
 */
@Service("${className}Service")
public class ${ClassName}ServiceImpl implements ${ClassName}Service {
    
    private Logger logger = LoggerFactory.getLogger(getClass());
    
    @Autowired
    private ${ClassName}Repository ${className}Repository;
    
    
}
