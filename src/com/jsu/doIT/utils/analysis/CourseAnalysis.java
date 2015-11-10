package com.jsu.doIT.utils.analysis;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jsu.doIT.po.Recommend;
import com.jsu.doIT.po.Usercourse;
import com.jsu.doIT.service.recommend.RecommendService;
import com.jsu.doIT.service.user.UserCourseService;

public class CourseAnalysis {

	private static ApplicationContext context = null;
	// private static CourseService courseService = null;
	private static UserCourseService userCourseService = null;
	private static RecommendService recommendService = null;
	private static Random random = new Random();

	public static void testfind() {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		// courseService = (CourseService) context.getBean("courseService");
		userCourseService = (UserCourseService) context.getBean("userCourseService");
		recommendService = (RecommendService) context.getBean("recommendService");

		List<Usercourse> usercourses = userCourseService.findAll();
		try {
			File file = new File("G:/StudyData/mahout/data.txt");
			file.createNewFile();
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			for (Usercourse usercourse : usercourses) {
				Integer value = random.nextInt(5) + 1;
				byte[] b = (usercourse.getUser().getUserId() + "," + usercourse.getCourse().getCourseId() + "," + value + System
						.getProperty("line.separator")).getBytes();
				fileOutputStream.write(b);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void testfindAll() {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		// courseService = (CourseService) context.getBean("courseService");
		userCourseService = (UserCourseService) context.getBean("userCourseService");

		System.out.println(recommendService.findAll().size());
	}

	public static void main(String[] args) {
		// File file = new File("post/test.txt");
		// System.out.println(file.getAbsolutePath());
		// testfind();
		// testfindAll();
		analysis("test");
	}

	public static void analysis(String filePath) {
		context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		recommendService = (RecommendService) context.getBean("recommendService");

		try {
			DataModel model = new FileDataModel(new File("G:/StudyData/mahout/data.txt"));
			UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
			UserNeighborhood neighborhood = new NearestNUserNeighborhood(20, similarity, model);
			Recommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);
			for (int i = 2; i < 200; i++) {
				List<RecommendedItem> recommendations = recommender.recommend(i, 10);// 为用户1推荐两个ItemID
				Recommend recommend = new Recommend();
				recommend.setStatus(0);
				recommend.setUserId(i);
				for (RecommendedItem recommendation : recommendations) {
					recommend.setCourseId((int) recommendation.getItemID());
					recommend.setLabelId((int) (recommendation.getValue() + 0.5));
					recommendService.save(recommend);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
