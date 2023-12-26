package com.jsp.exception;

public class WrongPasswordException extends RuntimeException{
	String message;

	public WrongPasswordException(String password) {
		super();
		this.message = password;
	}
	public void print() {
		System.out.println(message+" is a wrong password you have provided. Please provide correct password");
	}
	
}
