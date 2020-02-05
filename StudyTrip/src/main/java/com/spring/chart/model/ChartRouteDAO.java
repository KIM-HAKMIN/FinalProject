package com.spring.chart.model;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.stereotype.Repository;

@Repository 
public class ChartRouteDAO {

	
	@Resource
	private SqlSessionTemplate sqlsession;  

	
	public List<HashMap<String, String>> route() {
		List<HashMap<String, String>> routePercentageList = sqlsession.selectList("chart.Route");  
		return routePercentageList;
	}


}