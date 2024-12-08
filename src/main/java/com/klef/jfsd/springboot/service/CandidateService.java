package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.Resume;

public interface CandidateService 
{
	public String candidateRegistration(Candidate candidate);
	public Candidate checkCandidateLogin(String email,String password);
	
	public String addResume(Resume resume);
}
