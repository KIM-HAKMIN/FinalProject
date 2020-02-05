package com.spring.chart.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.spring.chart.service.ChartRouteService;


@Controller 
public class ChartRouteController {

	@Autowired 
	private ChartRouteService service; 
	
	
	@RequestMapping(value="/chart_route.st")
	public ModelAndView chart_route(ModelAndView mav) {
		
		mav.setViewName("chart/chart_route.tiles1");
		
		return mav;
		
	}
	
/*	
	@ResponseBody 
	@RequestMapping(value="/chart_route_view.st", produces="text/plain;charset=UTF-8")  
	public String route() {
	
		List<HashMap<String, String>> routePercentageList = service.route();
		
		Gson gson = new Gson();
		JsonArray jsonArr = new JsonArray();
		
		for(HashMap<String, String> map : routePercentageList) {
			JsonObject jsonObj = new JsonObject();
			jsonObj.addProperty("ROUTE", map.get("ROUTE"));  
			jsonObj.addProperty("CNT", map.get("CNT"));
			jsonObj.addProperty("PERCENTAGE", map.get("PERCENTAGE"));
			
			jsonArr.add(jsonObj);
		}
		
		return gson.toJson(jsonArr); 
	}
*/	
	
	
	
	@RequestMapping(value="/chart_route_view.st")  
	public String route(HttpServletRequest request) {
	
		List<HashMap<String, String>> routePercentageList = service.route();
		
		Gson gson = new Gson();
		JsonArray jsonArr = new JsonArray();
		
		for(HashMap<String, String> map : routePercentageList) {
			JsonObject jsonObj = new JsonObject();
			jsonObj.addProperty("ROUTE", map.get("ROUTE"));  
			jsonObj.addProperty("CNT", map.get("CNT"));
			jsonObj.addProperty("PERCENTAGE", map.get("PERCENTAGE"));
			
			jsonArr.add(jsonObj);
		}
		
		String result = gson.toJson(jsonArr);
		
		request.setAttribute("result", result);
				
		return "jsonResult"; 
	}
	
	
	
}