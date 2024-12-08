package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.klef.jfsd.springboot.model.Company;

@Repository
public interface CompanyRepository extends JpaRepository<Company, Integer>
{
	@Query("select c from Company c where c.email=?1 and c.password=?2 ")
	public Company checkCompanyLogin(String email,String password);
}
