package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "company_table")
public class Company 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "company_id",nullable = false)
	private int id;
	@Column(name = "company_name",nullable = false,length = 100)
	private String name;
	@Column(name = "company_email",nullable = false,unique = true,length = 100)
	private String email;
	@Column(name = "company_password",nullable = false,length = 100)
	private String password;
	@Column(name = "company_location",nullable = false,length = 100)
	private String location;
	@Column(name = "company_contact",nullable = false,unique = true,length = 20)
	private String contact;
	@Column(name = "company_jobtitle",nullable = false,length = 100)
	private String jobtitle;
	@Column(name = "company_jobdescription",nullable = false,length = 250)
	private String jobdescription;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getJobdescription() {
		return jobdescription;
	}
	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}
	
}
