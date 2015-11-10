package com.jsu.doIT.action.front.code;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletOutputStream;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Codetype;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Usercode;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.utils.CompileRunJavaCode;
import com.jsu.doIT.vo.CompileRunJavaCodeResult;

@Controller
@Scope("prototype")
public class CodeAction extends MyActionSupport<Object> {

	private static final long serialVersionUID = -4030109028511742168L;

	private String className;
	private String code;
	private String runArgs;

	private int type;

	public void setType(int type) {
		this.type = type;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setRunArgs(String runArgs) {
		this.runArgs = runArgs;
	}

	public String codeUI() {
		return "codeUI";
	}

	public void runCode() {
		// System.out.println(className);
		// System.out.println(code);
		// System.out.println(runArgs);
		CompileRunJavaCodeResult result = CompileRunJavaCode.exec(className, code, runArgs);
		ServletOutputStream outputStream;
		try {
			outputStream = ServletActionContext.getResponse().getOutputStream();
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(outputStream, "utf-8"));
			writer.write(result.toString());
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void saveCode() {
		try {
			User user = getCurrentUser();
			if (user == null) {
				ServletActionContext.getResponse().getWriter().print(400);
				return;
			}
			Codetype codetype = codeTypeService.findById(type);
			// codeService.save(new Usercode(codetype,
			// getCurrentUser().getUserinfo(), code, new Date()));
			codeService.save(new Usercode(codetype, user.getUserinfo(), code, new Timestamp(new Date().getTime())));
			Userinfo userinfo = user.getUserinfo();
			userinfo.setCodeNumber(userinfo.getCodeNumber() + 1);
			userinfoService.update(userinfo);
			ServletActionContext.getResponse().getWriter().print(200);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
