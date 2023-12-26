package com.jsp.utility;

import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class Address {

	private String street;
	private String landMark;
	private int pincode;
	private String district;
	private String state;
	private String country;

	@Override
	public int hashCode() {
		return Objects.hash(country, district, landMark, pincode, state, street);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Address other = (Address) obj;
		return Objects.equals(country, other.country) && Objects.equals(district, other.district)
				&& Objects.equals(landMark, other.landMark) && pincode == other.pincode
				&& Objects.equals(state, other.state) && Objects.equals(street, other.street);
	}

	@Override
	public String toString() {
		return "Address [street=" + street + ", landMark=" + landMark + ", pincode=" + pincode + ", district="
				+ district + ", state=" + state + ", country=" + country + "]";
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getLandMark() {
		return landMark;
	}

	public void setLandMark(String landMark) {
		this.landMark = landMark;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
