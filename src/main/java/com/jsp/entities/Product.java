package com.jsp.entities;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product_Info")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "p_id")
	private int id;
	@Column(name = "p_name")
	private String name;
	@Column(name = "p_image")
	private String image;
	@Column(name = "p_category")
	private String category;
	@Column(name = "p_price")
	private double price;
	@Column(name = "p_stock")
	private int stock;
	@ManyToOne(cascade = CascadeType.MERGE)
	private Merchant merchant;
	

	@Override
	public int hashCode() {
		return Objects.hash(category, id, image, merchant, name, price, stock);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(category, other.category) && id == other.id && Objects.equals(image, other.image)
				 && Objects.equals(merchant, other.merchant)
				&& Objects.equals(name, other.name)
				&& Double.doubleToLongBits(price) == Double.doubleToLongBits(other.price) && stock == other.stock;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", image=" + image + ", category=" + category + ", price="
				+ price + ", stock=" + stock + ", merchant=" + merchant + "]";
	}

	public Product(int id, String name, String image, String category, double price, int stock, Merchant merchant) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.category = category;
		this.price = price;
		this.stock = stock;
		this.merchant = merchant;
		
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	

}
