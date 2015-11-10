package com.jsu.doIT.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import net.sf.json.JSONObject;

public class Robot {

	public static String robot(String question) {
		String result = null;
		try {
			String APIKEY = "0581304c0050020e00f45b4e200c1f47";
			String INFO = URLEncoder.encode(question, "utf-8");
			String getURL = "http://www.tuling123.com/openapi/api?key=" + APIKEY + "&info=" + INFO;
			URL getUrl = new URL(getURL);
			HttpURLConnection connection = (HttpURLConnection) getUrl.openConnection();
			connection.connect();

			// 取得输入流，并使用Reader读取
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
			StringBuffer sb = new StringBuffer();
			String line = "";
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
			reader.close();
			// 断开连接
			connection.disconnect();
			result = sb.toString(); // JSON格式数据
			JSONObject json = JSONObject.fromObject(result);
			result = json.getString("text");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
