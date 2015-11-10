package com.jsu.doIT.action.front.user;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jsu.doIT.base.MyActionSupport;
import com.jsu.doIT.po.City;
import com.jsu.doIT.po.County;
import com.jsu.doIT.po.Province;
import com.jsu.doIT.po.User;
import com.jsu.doIT.po.Userinfo;
import com.jsu.doIT.po.Useroffice;
import com.jsu.doIT.utils.JSONSupport;
import com.jsu.doIT.vo.CityVO;
import com.jsu.doIT.vo.CountyVO;

@Controller
@Scope("prototype")
public class UserInfoBaseAction extends MyActionSupport<Userinfo> {

	private static final long serialVersionUID = 555317876057898648L;
	private List<Useroffice> useroffices;
	private List<Province> provinces;
	private Integer provinceId; // 省份编号
	private Integer cityId; // 城市编号
	private Integer countyId;// 区县编号
	private Integer officeId;// 职位编号

	public List<Useroffice> getUseroffices() {
		return useroffices;
	}

	public List<Province> getProvinces() {
		return provinces;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public void setCountyId(Integer countyId) {
		this.countyId = countyId;
	}

	public void setOfficeId(Integer officeId) {
		this.officeId = officeId;
	}

	public String UI() {
		if (getCurrentUser() == null) { // 没有登录
			return "notLogin";
		}
		model = getCurrentUser().getUserinfo();

		// 如果用户还没有填写职位信息
		if (model.getUseroffice() == null) {
			Useroffice useroffice = new Useroffice();
			useroffice.setOfficeId(0);
			useroffice.setOfficeName("请选择职称");
			model.setUseroffice(useroffice);
		} else {
			model.setUseroffice(officeService.findById(model.getUseroffice().getOfficeId()));
		}
		model.setCounty(countyService.findById(model.getCounty().getCountyId()));
		useroffices = officeService.findAll();
		provinces = provinceService.findAll();

		return "UI";
	}

	public String update() {
		Userinfo userinfo = getCurrentUser().getUserinfo();

		String URL = ServletActionContext.getRequest().getHeader("Referer");
		County county = countyService.findById(countyId);
		userinfo.setCounty(county);
		userinfo.setUseroffice(officeService.findById(officeId));
		userinfo.setSignature(model.getSignature());
		userinfo.setUserSex(model.getUserSex());

		userinfoService.update(userinfo);
		model = userinfo;
		JSONprint(URL);
		return null;
	}

	public String aupdate() {
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		String userName = ServletActionContext.getRequest().getAttribute("userName").toString();
		String countyName = ServletActionContext.getRequest().getAttribute("countyName").toString();
		String officeName = ServletActionContext.getRequest().getAttribute("officeName").toString();
		String signature = ServletActionContext.getRequest().getAttribute("signature").toString();
		try {
			userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			countyName = new String(countyName.getBytes("ISO-8859-1"), "UTF-8");
			officeName = new String(officeName.getBytes("ISO-8859-1"), "UTF-8");
			signature = new String(signature.getBytes("ISO-8859-1"), "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		User user = userService.findByUserName(userName);
		Userinfo userinfo = user.getUserinfo();

		String URL = ServletActionContext.getRequest().getHeader("Referer");
		County county = countyService.findByName(countyName);
		userinfo.setCounty(county);
		userinfo.setUseroffice(officeService.findByName(officeName));
		userinfo.setSignature(signature);
		userinfo.setUserSex(model.getUserSex());

		userinfoService.update(userinfo);
		model = userinfo;
		JSONprint(URL);
		return null;
	}

	/**
	 * 根据省份编号获取城市
	 * 
	 * @return
	 */
	public String getCity() {
		try {
			List<City> cities = cityService.findByprovinceId(provinceId);
			List<CityVO> cityVOs = new ArrayList<CityVO>();
			for (City city : cities) {
				CityVO cityVO = new CityVO();
				BeanUtils.copyProperties(cityVO, city);
				cityVOs.add(cityVO);
			}
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(cityVOs));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 根据城市编号获取区县
	 * 
	 * @return
	 */
	public String getCounty() {
		try {
			List<County> counties = countyService.findByCityId(cityId);
			List<CountyVO> countyVOs = new ArrayList<CountyVO>();
			for (County county : counties) {
				CountyVO countyVO = new CountyVO();
				BeanUtils.copyProperties(countyVO, county);
				countyVOs.add(countyVO);
			}
			ServletActionContext.getResponse().getWriter().print(JSONSupport.json(countyVOs));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
