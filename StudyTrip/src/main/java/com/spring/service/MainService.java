package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.InterMainDAO;
import com.spring.model.StudyVO;

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
