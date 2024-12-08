package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Blob;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.Resume;
import com.klef.jfsd.springboot.service.CandidateService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CandidateController 
{
	@Autowired
	private CandidateService candidateService;
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("candidatereg")
	public ModelAndView candidatereg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("candidatereg");
		return mv;
	}
	
	@PostMapping("insertcandidate")
	public ModelAndView insertcandidate(HttpServletRequest request)
	{
		//take the data to html to middleware
		String name = request.getParameter("cname");
		String gender= request.getParameter("cgender");
		String dob= request.getParameter("cdob");
		String email= request.getParameter("cemail");
		String location= request.getParameter("clocation");
		String contact= request.getParameter("ccontact");
		String password= request.getParameter("cpwd");
		
		Candidate candidate = new Candidate();
		candidate.setName(name);
		candidate.setGender(gender);
		candidate.setDateofbirth(dob);
		candidate.setEmail(email);
		candidate.setLocation(location);
		candidate.setContact(contact);
		candidate.setPassword(password);
		
		String message =  candidateService.candidateRegistration(candidate);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("candidateregsuccess");
		mv.addObject("message",message);
		
		return mv;
	}
	
	@GetMapping("candidatelogin")
	public ModelAndView candidatelogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("candidatelogin");
		return mv;
	}
	
	@PostMapping("checkcandidatelogin")
	public ModelAndView checkcandidatelogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String cemail = request.getParameter("cemail");
		String cpwd = request.getParameter("cpwd");
		
		Candidate candidate = candidateService.checkCandidateLogin(cemail, cpwd);
		
		if(candidate!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("candidate", candidate);//candidate is session
			
			mv.setViewName("candidatehome");
		}
		else
		{
			mv.setViewName("candidatelogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("candidatehome")
	public ModelAndView candidatehome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("candidatehome");
		return mv;
	}
	
	@GetMapping("candidateprofile")
	public ModelAndView candidateprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("candidateprofile");
		return mv;
	}
	
	@GetMapping("candidatelogout")
	public ModelAndView candidatelogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("candidatelogin");
		return mv;
	}
	
	@GetMapping("addresume")
	public String addresume()
	{
		return "addresume";
	}
	
	@PostMapping("insertresume")
	public ModelAndView insertresume(HttpServletRequest request,@RequestParam("rimage") MultipartFile file) throws IOException, SerialException, SQLException
	{
		String Candidatename = request.getParameter("rcandiname");
		String Companyname = request.getParameter("rcompyname");
		
		byte[] bytes = file.getBytes();
		
		Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		
		Resume r = new Resume();
		r.setCandidateName(Candidatename);
		r.setCompanyName(Companyname);
		r.setResume(blob);
		
		String message = candidateService.addResume(r);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("resumesuccess");
		mv.addObject("message", message);
		return mv;
	}
}
