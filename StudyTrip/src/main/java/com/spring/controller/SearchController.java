package com.spring.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.FileManager;
import com.spring.common.ThumbnailManager;
import com.spring.mail.GoogleMail;
import com.spring.model.StudyVO;
import com.spring.service.InterSearchService;


@Controller
public class SearchController {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterSearchService service;
	
	@Autowired
	private FileManager fileManager;
	

	
	
	@RequestMapping(value="/search.st")
	public ModelAndView search(ModelAndView mav, HttpServletRequest request) {
		
		String area[] = request.getParameterValues("area");
		String level[] = request.getParameterValues("level");
		String day[] = request.getParameterValues("day");
		
		HashMap<String, Object> paraMap = new HashMap<String, Object>();
		
		List<StudyVO> listst= new ArrayList<StudyVO>();
		
		
		if(area!=null||level!=null||day!=null) {
			
			paraMap.put("area", area);
			
			paraMap.put("level", level);
			
			paraMap.put("day", day);
			


			
			listst = service.getStudySearchListAll(paraMap);	// 조건이 있는 스터디목록을 보여줍니다.
			
		} 
		
		else{
			listst = service.getStudyListAll();	// 모든 스터디목록을 보여줍니다.	
		}
		

		
		
		/*System.out.println("장소는: " + area);
		System.out.println("레벨은: " + level);
		System.out.println("주말유무는: " + day);*/
		
		request.setAttribute("listst", listst);

		mav.setViewName("search/searchPage.tiles1");
		
		
		return mav;
	}
	


	@RequestMapping(value="/studyDetail.st")
	public ModelAndView searchDetail(ModelAndView mav, HttpServletRequest request) {
		
		String study_num = request.getParameter("study_num");
		
		System.out.println("study_num : "+study_num);
		
		StudyVO stvo = new StudyVO();
				
		stvo = service.searchDetail(study_num);  		//스터디 디테일 정보를 가져온다
		 
		List<HashMap<String, String>> viewStudyImageList = service.searchDetailImg(study_num);   //스터디 디테일 캐러셀 이미지주소를 가져온다
		
		
		
		System.out.println("useremail" + stvo.getFk_useremail());
		
		for(HashMap<String, String> paraMap:viewStudyImageList) {
			
			System.out.println("filename : " + paraMap.get("filename"));
			
		}
		
		request.setAttribute("stvo", stvo);
		request.setAttribute("viewStudyImageList", viewStudyImageList);
		
		mav.setViewName("search/studyDetail.tiles1");
		
		
		return mav;
	}

	@RequestMapping(value="/studyRegister.st")
	public ModelAndView studyRegister(ModelAndView mav) {
		
			mav.setViewName("search/studyRegister.tiles1");
			
			return mav;
		
	}
	
	
	
	@RequestMapping(value="/studyRegisterEnd.st", method={RequestMethod.POST})
	public ModelAndView studyRegisterEnd(ModelAndView mav, MultipartHttpServletRequest request) {
			
		
		
			String fromTime = request.getParameter("fromTime");
			String toTime = request.getParameter("toTime");
		
			String study_num = String.valueOf(service.getStudy_num());
			String fk_useremail = request.getParameter("email");
			String title = request.getParameter("title");
			String study_info = request.getParameter("content");
			String teacher_info = request.getParameter("introduce");
			String area = request.getParameter("area");
			String lv = request.getParameter("level");
			String areacost = request.getParameter("areacost");
			String price = request.getParameter("price");
			String startday = request.getParameter("fromDate");
			String lastday = request.getParameter("toDate");
			String study_week = request.getParameter("week");    // 총주
			String study_day = request.getParameter("studyWeek"); // 스터디요일
			String study_holyday = request.getParameter("selectDay"); // 주말 유무
			String study_time = fromTime + "-" +toTime;
			String max_cnt = request.getParameter("total");
			
			
			
			
			System.out.println(study_num);
			
			List<MultipartFile> attachList = request.getFiles("attach");
			
			HashMap<String, String> studyMap = new HashMap<String, String>();
			
			studyMap.put("study_num", study_num);						
			studyMap.put("fk_useremail", fk_useremail);			
			studyMap.put("title", title);			// 스터디 번호 
			studyMap.put("study_info", study_info);			// 스터디 정보
			studyMap.put("teacher_info", teacher_info);		// 리더 정보
			studyMap.put("area", area);						// 장소
			studyMap.put("lv", lv);						// 레벨
			studyMap.put("price", price);					// 가격
			studyMap.put("startday", startday);				// 스터디 시작일
			studyMap.put("lastday", lastday);				// 스터디 종료일
			studyMap.put("study_day", study_day);			//스터디 하는 요일
			studyMap.put("study_week", study_week);				// 스터디 총 주
			studyMap.put("study_holyday", study_holyday);		// 주말여부
			studyMap.put("study_time", study_time);	// 스터디 시간
			studyMap.put("areacost", areacost);				// 장소비 유무
			studyMap.put("max_cnt", max_cnt);				// 정원


			


			
			
			List<HashMap<String, String>> studyImageMapList = new ArrayList<HashMap<String, String>>();
			
			if(attachList != null) {  // 이미지첨부 다중파일을 받아왔다라면 
				// 이미지첨부 다중파일을 업로드할 WAS 의 webapp 의 절대경로를 알아와야 한다. 
				HttpSession session = request.getSession();
				String root = session.getServletContext().getRealPath("/"); 
				String path = root + "resources"+File.separator+"files";
				// path 가 첨부파일들을 저장할 WAS(톰캣)의 폴더가 된다. 
				
				String newFileName = ""; // WAS(톰캣) 디스크에 저장할 파일명 
				
				byte[] bytes = null;    // 첨부파일을 WAS(톰캣) 디스크에 저장할때 사용되는 용도 
				
				long fileSize = 0;   	// 파일크기를 읽어오기 위한 용도
								
				for(int i=0; i<attachList.size(); i++) { 
					try {
						 bytes = attachList.get(i).getBytes(); // 첨부파일의 내용물(byte)을 읽어옴.
						 
						 // 파일업로드 한 후 업로드되어진 파일명  가져오기
						 newFileName = fileManager.doFileUpload(bytes, attachList.get(i).getOriginalFilename(), path);
						 // 예를들어 newFileName 에는  2019012519592316420706146795.png 와 같은 것이 들어옴.
						 
						 fileSize = attachList.get(i).getSize(); // 첨부파일의 파일크기를 알아온다.
						 
		
						 
						 HashMap<String, String> studyImageMap = new HashMap<String, String>();
						// 제품1개에 딸린 다중 이미지
						 
						 studyImageMap.put("study_num", study_num);
						 studyImageMap.put("imagefilename", newFileName);
						 studyImageMap.put("imageOriginalname", attachList.get(i).getOriginalFilename());
						 //studyImageMap.put("IMAGEFILESIZE", String.valueOf(fileSize));
						 
						 studyImageMapList.add(studyImageMap);
						 
					} catch (Exception e) {	}
					
				}// end of for------------------------------------------------
				
			}// end of if---------------------------------------
			

			  // **** 폼에서 입력받은 제품입력정보 값을 
			  //      Service 단으로 넘겨서 테이블에 insert 하기로 한다.
				   
			       // 이미지파일첨부가 없는 경우 또는 이미지파일첨부가 있는 경우로 나누어서
				   // Service 단으로 호출하기
				   int n = 0;
				   int m = 0;
				   int count = 0;
				   int k =0;
				   
				   if(attachList == null) { // 파일이 첨부된것이 없다면
					    n = service.addStudy(studyMap);
				   }
				   else if(attachList != null) { // 파일이 첨부된것이 있다면
					    n = service.addStudy(studyMap);
					   
					   for(int i=0; i<studyImageMapList.size(); i++) {
						   m = service.addStudyimage(studyImageMapList.get(i));
						   k = service.addTitleimage(studyImageMapList.get(i));
						   if(m==1) count++;
					   }
					   
					   if(studyImageMapList.size() == count) {
						   n=1;
					   }
					   else {
						   n=0;
					   }
				   }
				   
				   
				   String msg = "";
				   String loc = "";
				   if(n==1) {
					   msg = "스터디 등록 성공!!";
					   loc = "/search.st";
				   }
				   else {
					   msg = "스터디 등록 실패!!";
					   loc = "javascript:history.back();";
				   }
				    		
				   System.out.println("msg :" + msg);
				   System.out.println("loc :" + loc);
				   
				   request.setAttribute("msg", msg);
				   request.setAttribute("loc", loc);
								
			
				   	mav.setViewName("msg");
				   	
			   return mav;			
		
	}
	
	
	

	@RequestMapping(value="/studyEdit.st")
	public ModelAndView studyEdit(ModelAndView mav) {
		
		
		mav.setViewName("search/studyEdit.tiles1");
		
		
		return mav;
	}	

	
}
