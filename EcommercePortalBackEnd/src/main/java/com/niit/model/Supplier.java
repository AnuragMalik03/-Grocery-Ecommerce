package com.niit.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@SuppressWarnings("unused")
@Component
@Entity// it automatically creates table through HIBERNATE
@Table(name="Supplier")
public class Supplier {
	
	@Id
	private int sid;
	private String supplierName;
	@OneToMany(targetEntity=Product.class , fetch=FetchType.EAGER , mappedBy="supplier")
	private Set<Product> products= new HashSet<Product>(0);
	
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}
