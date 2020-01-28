package com.spring.chart.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.chart.model.ChartRouteDAO;


@Service 
public class ChartRouteService {
	
	
	@Autowired
	private ChartRouteDAO dao;
	

	public List<HashMap<String, String>> route() {
		List<HashMap<String, String>> routePercentageList = dao.route();
		return routePercentageList;
	}

	
}
