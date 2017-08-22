package com.niit.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.BatchSize;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;


@SuppressWarnings("unused")
@Component
@Entity// it automatically creates table through HIBERNATE
@Table(name="User")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Email(message="Enter Valid Email")
	@NotEmpty(message="Enter the Email")
	private String email;
	@NotEmpty(message="Enter the name")
	private String name;
	
	@NotNull(message="Password is Null")
	@Size(min=8 , max=12 , message="Password should be more than 8 characters and less than 12")
	private String password;
	@NotNull(message="Address can not be left Blank")
	@Size(min=3 , max=4 , message="Enter a valid appartment No")
	private String addrs1;
	@NotEmpty(message="Enter location")
	private String addrs2;
	@NotEmpty(message="Enter your City")
	private String city;
	@NotEmpty(message="Enter you State")
	private String state;
	@NotNull
	@Size(min=6 , max=6 ,message="Enter correct Post Code")
	private String zip;
	private String role;
	/*@NotNull(message="Adderess is Null")
	private String address;*/
	
	@NotNull
	@Pattern(regexp="^[A-Za-z0-9]+$" , message="Plese Enter Digits")
	@Size(min=8 , max=10 , message="Enter Correct Phone")
	private String phone;
	private boolean enabled = true;
	@NotNull(message="Select your security Question")
	private String securityQ;
	@NotNull(message="Enter  your security Answer")
	private String securityA;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddrs2() {
		return addrs2;
	}
	public void setAddrs2(String addrs2) {
		this.addrs2 = addrs2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getSecurityQ() {
		return securityQ;
	}
	public void setSecurityQ(String securityQ) {
		this.securityQ = securityQ;
	}
	public String getSecurityA() {
		return securityA;
	}
	public void setSecurityA(String securityA) {
		this.securityA = securityA;
	}

	public String getAddrs1() {
		return addrs1;
	}
	public void setAddrs1(String addrs1) {
		this.addrs1 = addrs1;
	}
	
	
	
	
	
	}

