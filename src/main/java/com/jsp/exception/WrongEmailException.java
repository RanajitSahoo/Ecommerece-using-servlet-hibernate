package com.jsp.exception;

public class WrongEmailException extends RuntimeException{
	String message;

	public WrongEmailException(String email) {
		super();
		this.message = email;
	}
	public void print() {
		System.out.println(message+" is a wrong email you have provided. Please provide correct email");
	}

}
