package test.com.jsu.doIT.dwr;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.directwebremoting.ScriptSession;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.proxy.dwr.Util;

import com.jsu.doIT.utils.PublicFieldName;
import com.opensymphony.xwork2.ActionContext;

/**
 * 测试整合DWR 反向推送技术
 * 
 * @author hadoop
 * 
 */

@SuppressWarnings("deprecation")
public class SendPushService {

	// 发送消息
	public String send(String receiverId, String content, HttpServletRequest req) {
		ScriptSession receiver_session = this.getScriptSession(receiverId);
		Collection<ScriptSession> cols = new ArrayList<ScriptSession>();
		cols.add(receiver_session);
		Util util = new Util(cols);
		util.addFunctionCall("doReply", "ok");
		return "ok";
	}
	
	public String sendMessage(String receiverId, String content, HttpServletRequest req) {
		ScriptSession receiver_session = this.getScriptSession(receiverId);
		Collection<ScriptSession> cols = new ArrayList<ScriptSession>();
		cols.add(receiver_session);
		Util util = new Util(cols);
		util.addFunctionCall("doMessage", "ok");
		return "ok";
	}

	/**
	 * 添加客户端session
	 * 
	 * @param userId
	 *            用户标识
	 */
	public void addScriptSession(String userId) {
		Map<String, Object> sessionManager = getsessionManager();
		if (!"".equals(userId) && userId != null) {
			sessionManager.put(userId, WebContextFactory.get().getScriptSession());
		}
	}

	/**
	 * 获取客户端session集合、如果存在则获取、不存在则生成
	 * 
	 * @return 客户端session
	 */
	@SuppressWarnings("unchecked")
	public Map<String, Object> getsessionManager() {
		Map<String, Object> sessionManager = (Map<String, Object>) ActionContext.getContext().getSession()
				.get(PublicFieldName.sessionManager);
		if (sessionManager == null) {
			sessionManager = new HashMap<String, Object>();
			ActionContext.getContext().getSession().put(PublicFieldName.sessionManager, sessionManager);
		}
		return sessionManager;
	}

	/**
	 * 获取客户端session
	 * 
	 * @param userId
	 * @return
	 */
	public ScriptSession getScriptSession(String userId) {
		return (ScriptSession) getsessionManager().get(userId);
	}
}