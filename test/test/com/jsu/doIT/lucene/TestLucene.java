package test.com.jsu.doIT.lucene;

import java.util.List;

import org.junit.Test;

import com.jsu.doIT.lucene.dao.DocumentInfo;
import com.jsu.doIT.lucene.dao.IndexDAO;
import com.jsu.doIT.lucene.dao.IndexService;

public class TestLucene {

	IndexDAO indexDao = new IndexDAO();
	private IndexService indexService = new IndexService();
	private String filePath = "F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\test.txt";
	private String indexPath = "F:\\apache-tomcat-6.0.41\\webapps\\izhi\\post\\lunece";
	
	@Test
	public void testSave() throws Exception {
//		String realpath = ServletActionContext.getServletContext().getRealPath("\\course");
		indexService.save(filePath, indexPath);
	}
	
	@Test
	public void testsearch() throws Exception {
		List<DocumentInfo> infos = indexService.search("重复", indexPath);
		System.out.println(infos.size());
		for (DocumentInfo documentInfo : infos) {
			System.out.println(documentInfo.getContent());
		}
	}
}
