package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.model.Resume;

public interface AdminService 
{
	public List<Candidate> viewallCandidates();
	public Admin checkAdminLogin(String uname,String pwd);
	public long candidateCount();
	public String deletecandidate(int id);
	public Candidate displayCandidateById(int id);
	
	public List<Company> viewallCompanys();
	public long companyCount();
	
	public List<Resume> viewAllResumes();
	public Resume displayResumeById(int rid);
}
