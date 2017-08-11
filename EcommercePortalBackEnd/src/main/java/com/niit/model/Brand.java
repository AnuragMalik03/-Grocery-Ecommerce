package com.niit.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("unused")
@Component
@Entity// it automatically creates table through HIBERNATE
@Table(name="Brand")
public class Brand {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bid;
	private String brandName;
	
	@OneToMany(targetEntity=Product.class , fetch=FetchType.EAGER , mappedBy="brand")
	private Set<Product> products= new HashSet<Product>(0);
	
	@Transient
	MultipartFile bimage;
	
	private String bimgName;
	
	
	public MultipartFile getBimage() {
		return bimage;
	}
	public void setBimage(MultipartFile bimage) {
		this.bimage = bimage;
	}
	public String getBimgName() {
		return bimgName;
	}
	public void setBimgName(String bimgName) {
		this.bimgName = bimgName;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
}
