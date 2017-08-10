package nhatnghe.controller;

import nhatnghe.bean.CompanyInfo;
import nhatnghe.bean.Mailer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("di")
public class DIController {
	//Way 1
//	@Autowired
//	CompanyInfo company;
	
	//Way 2
//	CompanyInfo company;
//	@Autowired
//	public DIController(CompanyInfo company){
//		this.company = company;
//	}
	
	//Way 3
//	CompanyInfo company;
//	@Autowired
//	public void setCompany(CompanyInfo company){
//		this.company = company;
//	}
	
	//Way 4: compare 2 different bean
	CompanyInfo company;
	@Autowired @Qualifier("com2")
	public void setCompany(CompanyInfo company){
		this.company = company;
	}
	
	//Inject bean into Controller
	@Autowired
	Mailer mailer;
	
	@RequestMapping("index")
	public String index(ModelMap model){
		model.addAttribute("congty", company);
		mailer.send();//use send function in mailer
		return "di";
	}
}
