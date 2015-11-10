package test.com.jsu.doIT.utils;

import org.junit.Test;

import com.jsu.doIT.utils.PublicMethod;

public class TestPublicMethod {

	/**
	 * 测试邮箱验证
	 */
	@Test
	public void testverifyEmail() {
//		System.out.println(PublicMethod.verifyEmail("154287@123.123")); //false
		System.out.println(PublicMethod.verifyEmail("154287@123.com")); //true
	}

}
