package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.model.Resume;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CandidateRepository;
import com.klef.jfsd.springboot.repository.CompanyRepository;
import com.klef.jfsd.springboot.repository.ResumeRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private CandidateRepository candidateRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CompanyRepository companyRepository;
	
	@Autowired
	private ResumeRepository resumeRepository;
	
	@Override
	public List<Candidate> viewallCandidates() 
	{
		return candidateRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) 
	{
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	@Override
	public long candidateCount() 
	{
		return candidateRepository.count();
	}

	@Override
	public List<Company> viewallCompanys() {
		return companyRepository.findAll();
	}

	@Override
	public long companyCount() {
		return companyRepository.count();
	}

	@Override
	public String deletecandidate(int id) {
		candidateRepository.deleteById(id);
		return "Candidated Deleted successfully";
	}

	@Override
	public Candidate displayCandidateById(int id) {
		return candidateRepository.findById(id).get();
	}

	@Override
	public List<Resume> viewAllResumes() {
		return resumeRepository.findAll();
	}

	@Override
	public Resume displayResumeById(int rid) {
		return resumeRepository.findById(rid).get();
	}

}
