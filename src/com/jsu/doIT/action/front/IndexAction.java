package com.jsu.doIT.action.front;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.User;

@Controller
@Scope("prototype")
public class IndexAction extends MyActionSupport<User> {

	private static final long serialVersionUID = 1390464461272069218L;
	
	/**
	 * 进入首页
	 * @return
	 */
	public String index() {
		return SUCCESS;
	}

}
