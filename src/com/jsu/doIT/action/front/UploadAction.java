package com.jsu.doIT.action.front;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.sql.Timestamp;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.Head;

/**
 * 文件上传
 * 
 * @author hadoop
 * 
 */

@SuppressWarnings("serial")
@Controller
public class UploadAction extends MyActionSupport<Head> {

	private File myFile; // 上传的文件
	private String myFileFileName; // 文件名称
	private String myFileContentType; // 文件类型

	/**
	 * 进入文件上传页面
	 * 
	 * @return
	 */
	public String uploadUI() {
		return "uploadUI";
	}

	/**
	 * 文件上传
	 * 
	 * @return
	 * @throws Exception
	 */
	public String upload() {
		String realpath = ServletActionContext.getServletContext().getRealPath("\\upload\\image\\head");
		if (myFile != null) {
			File savefile = new File(new File(realpath), myFileFileName);
			if (!savefile.getParentFile().exists()) {
				savefile.getParentFile().mkdirs();
			}
			// 如果文件已经存在、则开始续传
			if (savefile.exists()) {
				long size = savefile.length(); // 或的已保存文件大小
				RandomAccessFile accessFile; // 保存文件
				try {
					accessFile = new RandomAccessFile(savefile, "rw"); // 保存的文件
					InputStream inputStream = new FileInputStream(myFile); // 输出流
					accessFile.seek(size); // 跳过size长度开始保存文件
					int len = 0;
					byte[] b = new byte[1024];
					inputStream.skip(size); // 跳过size长度开始输出文件
					while ((len = inputStream.read(b, 0, 1024)) > 0) {
						accessFile.write(b, 0, len);
					}
					model.setAddTime(new Timestamp(new Date().getTime()));
					model.setHeadUrl("upload/image/head/" + myFileFileName);
					headService.save(model);
					ServletActionContext.getResponse().getWriter().print("上传成功!");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				try {
					FileUtils.copyFile(myFile, savefile);
					model.setAddTime(new Timestamp(new Date().getTime()));
					model.setHeadUrl("upload/image/head/" + myFileFileName);
					headService.save(model);
					ServletActionContext.getResponse().getWriter().print("上传成功!");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public String getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}
}