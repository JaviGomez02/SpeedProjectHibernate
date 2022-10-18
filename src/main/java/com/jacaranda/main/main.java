package com.jacaranda.main;

import com.jacaranda.dao.CRUDShoe;

public class main {

	public static void main(String[] args) {
		CRUDShoe c=new CRUDShoe();
		System.out.println(c.readShoe(3));
	}

}
