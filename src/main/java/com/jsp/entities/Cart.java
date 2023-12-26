package com.jsp.entities;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cart_Info")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "c_Id")
	private int id;
	@Column(name = "cart_totalPrice")
	private double totalPrice;
	@OneToOne(cascade = CascadeType.DETACH)
	private Customer customer;
	@OneToMany(cascade = CascadeType.DETACH)
	private List<Item> items;

	@Override
	public int hashCode() {
		return Objects.hash(customer, id, items, totalPrice);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cart other = (Cart) obj;
		return Objects.equals(customer, other.customer) && id == other.id && Objects.equals(items, other.items)
				&& Double.doubleToLongBits(totalPrice) == Double.doubleToLongBits(other.totalPrice);
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", totalPrice=" + totalPrice + ", customer=" + customer + ", items=" + items + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

}
