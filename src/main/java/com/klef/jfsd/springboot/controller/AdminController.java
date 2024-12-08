package com.klef.jfsd.springboot.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.model.Resume;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminservice;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		
		long count = adminservice.candidateCount();
		mv.addObject("count", count);
		
		long comcount = adminservice.companyCount();
		mv.addObject("comcount", comcount);
		
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminservice.checkAdminLogin(auname, apwd);
		
		if(admin!=null)
		{
			mv.setViewName("adminhome");
			
			long count = adminservice.candidateCount();
			mv.addObject("count", count);
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("viewallcandidates")
	public ModelAndView viewallcandidates()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcandidates");
		
		long count = adminservice.candidateCount();
		mv.addObject("count", count);
		
		List<Candidate> candidates = adminservice.viewallCandidates();
		mv.addObject("candidatelist", candidates);
		return mv;
	}
	
	@GetMapping("viewallcompanies")
	public ModelAndView viewallcompanies()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcompanies");
		
		long comcount = adminservice.companyCount();
		mv.addObject("comcount", comcount);
		
		List<Company> companies = adminservice.viewallCompanys();
		mv.addObject("companylist", companies);
		return mv;
	}
	
	@GetMapping("deletecandidate")
	public ModelAndView deletecandidate()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deletecandidate");
		
		List<Candidate> candidates = adminservice.viewallCandidates();
		mv.addObject("candidatelist", candidates);
		return mv;
	}
	@GetMapping("delete")
	public String delete(@RequestParam int id)
	{
		adminservice.deletecandidate(id);
		return "redirect:/deletecandidate";
	}
	
	@GetMapping("viewcandidatebyid")
	public ModelAndView viewcandidatebyid()
	{
		ModelAndView mv = new ModelAndView();
		
		List<Candidate> candidates = adminservice.viewallCandidates();
		mv.addObject("candidatelist", candidates);
		
		mv.setViewName("viewcandidatebyid");
		return mv;
	}
	
	@PostMapping("displaycandidate")
	public ModelAndView displaycandidate(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		
		Candidate candidate = adminservice.displayCandidateById(id);
		
		ModelAndView mv = new ModelAndView("displaycandidate");
		mv.addObject("c",candidate);
		
		return mv;
	}
	
	@GetMapping("viewallresumes")
	public ModelAndView viewallresumes()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallresumes");
		
		List<Resume> resumes = adminservice.viewAllResumes();
		mv.addObject("resumes",resumes);
		
		return mv;
	}
	
	@GetMapping("displayresumeimage")
	public ResponseEntity<byte[]> displayresumeimage(@RequestParam int id) throws SQLException
	{
		Resume resume = adminservice.displayResumeById(id);
		
		byte[] imagebytes = null;
		
		imagebytes = resume.getResume().getBytes(1, (int)resume.getResume().length());
		
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagebytes);
	}
}
