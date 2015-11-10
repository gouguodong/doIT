package test.com.jsu.doIT.utils;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.jsu.doIT.po.Userpost;
import com.jsu.doIT.utils.MyBeanUtils;
import com.jsu.doIT.vo.UserpostVO;

public class DateTest {
	public static void main(String[] args) throws Exception {
		Userpost userpost = new Userpost();
		userpost.setPostId(2);
		userpost.setPostTitle("ssss");
		userpost.setPostContext("asdfasdfcxvcxz");
		userpost.setPostTime(new Timestamp(System.currentTimeMillis()));
		userpost.setReplyTime(new Timestamp(System.currentTimeMillis()));
		userpost.setClickNumber(2);
		userpost.setReplyNumber(3);
		// UserpostVO userpostVO = new UserpostVO();
		// MyBeanUtils.copy(userpostVO, userpost);
		// System.out.println(userpostVO.getPostTime());
		List<Userpost> userposts = new ArrayList<Userpost>();
		userposts.add(userpost);
		List<UserpostVO> userpostVOs = new ArrayList<UserpostVO>();
		MyBeanUtils.copyList(userpostVOs, userposts, UserpostVO.class);
		System.out.println(userpostVOs.size());
	}
}
