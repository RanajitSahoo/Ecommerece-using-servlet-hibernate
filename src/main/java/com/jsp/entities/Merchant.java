package com.jsp.entities;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GeneratorType;

@Entity
@Table(name = "Merchant_Info")
public class Merchant {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "m_id")
	private int id;
	@Column(name = "m_name", insertable = true)
	private String name;
	@Column(name = "m_email", insertable = true)
	private String email;
	@Column(name = "m_password", insertable = true)
	private String password;
	@Column(name = "m_mob", insertable = true)
	private long mobileNumber;
	@Column(name = "m_status")
	private String status = "deActive";

	@OneToMany(cascade = CascadeType.MERGE)
	private List<Product> products;
	@ManyToOne(cascade = CascadeType.MERGE)
	private Admin admin;

	public Merchant(int id, String name, String email, String password, long mobileNumber, String status,
			List<Product> products, Admin admin) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.mobileNumber = mobileNumber;
		this.status = status;
		this.products = products;
		this.admin = admin;
	}

	public Merchant() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public int hashCode() {
		return Objects.hash(admin, email, id, mobileNumber, name, password, products, status);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Merchant other = (Merchant) obj;
		return Objects.equals(admin, other.admin) && Objects.equals(email, other.email) && id == other.id
				&& mobileNumber == other.mobileNumber && Objects.equals(name, other.name)
				&& Objects.equals(password, other.password) && Objects.equals(products, other.products)
				&& Objects.equals(status, other.status);
	}

	@Override
	public String toString() {
		return "Merchant [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", mobileNumber=" + mobileNumber + ", status=" + status + ", products=" + products + ", admin="
				+ admin + "]";
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

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

}
