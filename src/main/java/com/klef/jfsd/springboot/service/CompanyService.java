package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Company;


public interface CompanyService 
{
	public String CompanyRegistration(Company company);
	public Company checkCompanyLogin(String email, String password);
}
