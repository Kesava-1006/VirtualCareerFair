package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.Resume;
import com.klef.jfsd.springboot.repository.CandidateRepository;
import com.klef.jfsd.springboot.repository.ResumeRepository;

@Service
public class CandidateServiceImpl implements CandidateService
{
	
	@Autowired
	private CandidateRepository candidateRepository;
	
	@Autowired
	private ResumeRepository resumeRepository;
	
	@Override
	public String candidateRegistration(Candidate candidate) 
	{
		candidateRepository.save(candidate);
		return "Candidate Register Successfully";
	}

	@Override
	public Candidate checkCandidateLogin(String email, String password) {
		return candidateRepository.checkCandidateLogin(email, password);
	}

	@Override
	public String addResume(Resume resume) {
		resumeRepository.save(resume);
		return "Resume Added Successfully";
	}

}
