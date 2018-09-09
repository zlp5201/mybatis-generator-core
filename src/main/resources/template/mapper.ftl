<#--

       Copyright 2006-2017 the original author or authors.

       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.

-->
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
