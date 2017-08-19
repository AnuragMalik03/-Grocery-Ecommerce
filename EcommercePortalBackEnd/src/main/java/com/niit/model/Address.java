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
@Table(name="Address")
public class Address implements Serializable {

	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int addrId;
	/*@NotNull(message="Enter your Full bane")
	private String fName;*/
	@NotNull(message="Enter your Apartment no")
	private String address1;
	@NotNull(message="Enter your Adress")
	private String address2;
	@NotNull(message="Enter your City")
	private String city;
	@NotNull(message="Enter your State")
	private String state;
	@NotNull(message="Enter your post code")
	
	private int pincode;
	@NotNull(message="Enter your Country")
	private String country;
	
	@OneToOne(fetch=FetchType.LAZY )
	@JoinColumn(name="userEmail")
	private User user;


	public int getAddrId() {
		return addrId;
	}

	public void setAddrId(int addrId) {
		this.addrId = addrId;
	}

/*	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}
*/
/*	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}*/

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
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

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	
	

}
