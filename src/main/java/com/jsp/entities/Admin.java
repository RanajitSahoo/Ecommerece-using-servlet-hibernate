package com.jsp.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;



@Entity
@Table(name="Admin")
public class Admin {
	@Id
	@GenericGenerator(name="i",strategy = "com.jsp.utility.AdminId")
	@GeneratedValue(generator = "i")
	private String adminId;
	@Column(name="admin_Email",insertable = true)
	private String email;
	@Column(name="admin_Password",insertable = true)
	private String password;
	@OneToMany(cascade=CascadeType.DETACH)
	private List<Merchant> merchants;
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
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
	public List<Merchant> getMerchants() {
		return merchants;
	}
	public void setMerchants(List<Merchant> merchants) {
		this.merchants = merchants;
	}

}
