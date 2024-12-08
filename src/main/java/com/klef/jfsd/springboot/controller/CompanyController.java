package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.service.CompanyService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CompanyController 
{
	@Autowired
	private CompanyService companyService;
	
	@GetMapping("companyreg")
	public ModelAndView companyreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyreg");
		return mv;
	}
	
	@GetMapping("companyhome")
	public ModelAndView companyhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyhome");
		return mv;
	}
	
	@GetMapping("companylogin")
	public ModelAndView companylogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companylogin");
		return mv;
	}
	
	@PostMapping("insertcompany")
	public ModelAndView insertcompany(HttpServletRequest request)
	{
		String name = request.getParameter("comname");
		String email = request.getParameter("comemail");
		String password = request.getParameter("compwd");
		String location = request.getParameter("comlocation");
		String contact = request.getParameter("comcontact");
		String jobtitle = request.getParameter("comjobtitle");
		String jobdesc = request.getParameter("comjobdesc");
		
		Company company = new Company();
		company.setName(name);
		company.setEmail(email);
		company.setPassword(password);
		company.setLocation(location);
		company.setContact(contact);
		company.setJobtitle(jobtitle);
		company.setJobdescription(jobdesc);
		
		String message = companyService.CompanyRegistration(company);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyregsuccess");
		mv.addObject("message",message);
		
		return mv;
	}
	
	@PostMapping("checkcompanylogin")
	public ModelAndView checkcompanylogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String comemail = request.getParameter("comemail");
		String compwd = request.getParameter("compwd");
		
		Company company = companyService.checkCompanyLogin(comemail, compwd);
		
		if(company!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("company", company);//company is session
			
			mv.setViewName("companyhome");
		}
		else
		{
			mv.setViewName("companylogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("companyprofile")
	public ModelAndView companyprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyprofile");
		return mv;
	}
	
	@GetMapping("companylogout")
	public ModelAndView companylogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("candidatelogin");
		return mv;
	}
}
