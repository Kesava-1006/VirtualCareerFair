package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Candidate;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Integer>
{
	@Query("select c from Candidate c where c.email=?1 and c.password=?2 ")
	public Candidate checkCandidateLogin(String email,String password);
	
}
