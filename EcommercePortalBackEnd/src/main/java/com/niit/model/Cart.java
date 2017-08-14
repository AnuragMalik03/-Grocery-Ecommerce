package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@SuppressWarnings("unused")
@Component
@Entity// it automatically creates table through HIBERNATE
@Table(name="CartDetails")
public class Cart implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartId;
	private int cartProductId;
	
	@OneToOne(fetch= FetchType.LAZY)
	@JoinColumn(name="userMailId")
	private User cartUserDetails;
	private Double cartPrice;
	@NotNull
	
	private int cartQuantity;
	private String CartImage;
	private String cartProductName;
	
	public Cart()
	{
		
	}
	
	public Cart(int cartId , int cartProductId ,User cartUserDetails , Double cartPrice , int cartQuantity)
	{
		this.cartId = cartId;
		this.cartPrice = cartPrice;
		this.cartProductId = cartProductId;
		this.cartUserDetails = cartUserDetails;
		this.cartQuantity = cartQuantity;
		
	}
	
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getCartProductId() {
		return cartProductId;
	}

	public void setCartProductId(int cartProductId) {
		this.cartProductId = cartProductId;
	}

	public User getCartUserDetails() {
		return cartUserDetails;
	}

	public void setCartUserDetails(User cartUserDetails) {
		this.cartUserDetails = cartUserDetails;
	}

	public Double getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(Double cartPrice) {
		this.cartPrice = cartPrice;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}

	public String getCartImage() {
		return CartImage;
	}

	public void setCartImage(String cartImage) {
		CartImage = cartImage;
	}

	public String getCartProductName() {
		return cartProductName;
	}

	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}


}
