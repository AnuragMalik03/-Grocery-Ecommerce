package com.niit.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
	private String password;
	private String role;
	@NotNull(message="Adderess is Null")
	private String address;
	@Pattern(regexp="[\\d]{10}" , message="Plese Enter Digits")
	@NotNull
	@Size(min=8 , max=10 , message="Enter Correct Phone")
	private String phone;
	private boolean enabled;
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	}

