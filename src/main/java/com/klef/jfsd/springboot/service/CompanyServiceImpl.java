package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.repository.CompanyRepository;

@Service
public class CompanyServiceImpl implements CompanyService
{

	@Autowired
	private CompanyRepository companyRepository;
	
	@Override
	public String CompanyRegistration(Company company) 
	{
		companyRepository.save(company);
		return "Company Registration Successfully";
	}

	@Override
	public Company checkCompanyLogin(String email, String password) 
	{
		return companyRepository.checkCompanyLogin(email, password);
	}

}
