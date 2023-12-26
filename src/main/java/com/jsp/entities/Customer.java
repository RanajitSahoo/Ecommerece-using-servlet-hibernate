package com.jsp.entities;

import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.jsp.utility.Address;

@Entity
@Table(name = "Customer_info")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "c_id")
	private int id;
	@Column(name = "c_name")
	private String name;
	@Column(name = "c_image")
	private String image;
	@Embedded
	private Address address;
	@Column(name = "c_email", unique = true)
	private String email;
	@Column(name = "c_password")
	private String password;
	@Column(name = "c_mobileNumber", unique = true)
	private String mobieNumber;
	@Column(name = "c_status", unique = true)
	private String status="deActive";
	@OneToOne(cascade = CascadeType.MERGE)
	private Cart cart;

	@Override
	public int hashCode() {
		return Objects.hash(address, cart, email, id, image, mobieNumber, name, password, status);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Customer other = (Customer) obj;
		return Objects.equals(address, other.address) && Objects.equals(cart, other.cart)
				&& Objects.equals(email, other.email) && id == other.id && Objects.equals(image, other.image)
				&& mobieNumber == other.mobieNumber && Objects.equals(name, other.name)
				&& Objects.equals(password, other.password) && Objects.equals(status, other.status);
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", image=" + image + ", address=" + address + ", email="
				+ email + ", password=" + password + ", mobieNumber=" + mobieNumber + ", status=" + status + ", cart="
				+ cart + "]";
	}

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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
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

	public String getMobieNumber() {
		return mobieNumber;
	}

	public void setMobieNumber(String mobieNumber) {
		this.mobieNumber = mobieNumber;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
