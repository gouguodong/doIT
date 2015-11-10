package test.com.jsu.doIT.struts;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 测试整合SSH
 * 
 * @author hadoop
 * 
 */
@Controller
@Scope("prototype")
public class TestStrutsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	/**
	 * 测试整合Struts
	 */
	public String execute() throws Exception {
		System.out.println("测试成功");
		return SUCCESS;
	}
}
