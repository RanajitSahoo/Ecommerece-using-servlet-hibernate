package com.jsp.utility;

import java.io.Serializable;
import java.util.Random;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;

public class AdminId implements IdentifierGenerator{

	@Override
	public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
		Random r = new Random();
		return "ADM-23-JSP-"+r.nextInt(1000)+r.nextInt(10);
	}

}
