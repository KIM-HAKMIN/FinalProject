package com.spring.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.main.model.InterMainDAO;

@Service
public class MainService implements InterMainService {

	
	@Autowired
	private InterMainDAO dao;

	@Override
	public String getToday() {
		String today = dao.getToday(); 
		return today;
	}
	
}
