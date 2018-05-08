/**
 * There are automatic code generation
 */
package ${packageName}.web.${moduleName};

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.xinguang.futuredomain.impl.common.config.Global;
import com.xinguang.futuredomain.impl.common.persistence.Page;
import com.xinguang.futuredomain.impl.common.web.BaseController;
import com.xinguang.futuredomain.impl.common.utils.StringUtils;
import com.xinguang.futuredomain.impl.modules.sys.entity.User;
import com.xinguang.futuredomain.impl.modules.sys.utils.UserUtils;
import ${packageName}.model.${ClassName};
import ${packageName}.biz.${ClassName}Biz;

/**
 * ${functionName}Controller
 * @author ${classAuthor}
 * @version ${classVersion}
 */
@Controller
@RequestMapping(value = "${r"${adminPath}"}/${urlPrefix}")
public class ${ClassName}Controller extends BaseController {

	@Autowired
	private ${ClassName}Service ${className}Service;
	
	@ModelAttribute
	public ${ClassName} get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return ${className}Service.selectByPrimaryKey(id);
		}else{
			return new ${ClassName}();
		}
	}
	
	@RequiresPermissions("${permissionPrefix}:view")
	@RequestMapping(value = {"list", ""})
	public String list(${ClassName} ${className}, HttpServletRequest request, HttpServletResponse response, Model model) {
		User user = UserUtils.getUser();
		if (!user.isAdmin()){
			${className}.setCreateBy(user);
		}
		
		// TODO 分页 zhangliping
		
        // Page<${ClassName}> page = ${className}biz.find(new Page<${ClassName}>(request, response), ${className}); 
        // model.addAttribute("page", page);
		return "modules/" + "${viewPrefix}List";
	}

	@RequiresPermissions("${permissionPrefix}:view")
	@RequestMapping(value = "form")
	public String form(${ClassName} ${className}, Model model) {
		model.addAttribute("${className}", ${className});
		return "modules/" + "${viewPrefix}Form";
	}

	@RequiresPermissions("${permissionPrefix}:edit")
	@RequestMapping(value = "save")
	public String save(${ClassName} ${className}, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, ${className})){
			return form(${className}, model);
		}
		${className}Biz.insertSelective(${className});
		addMessage(redirectAttributes, "保存${functionName}'" + ${className}.getName() + "'成功");
		return "redirect:"+Global.getAdminPath()+"/${viewPrefix}/?repage";
	}
	
	@RequiresPermissions("${permissionPrefix}:edit")
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		${className}Biz.deleteByPrimaryKey(id);
		addMessage(redirectAttributes, "删除${functionName}成功");
		return "redirect:"+Global.getAdminPath()+"/${viewPrefix}/?repage";
	}

}
