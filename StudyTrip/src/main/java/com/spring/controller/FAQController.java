package com.spring.controller;

import java.io.File;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.FileManager;
import com.spring.common.MyUtil;
import com.spring.model.FAQVO;
import com.spring.service.InterFAQService;

@Controller
public class FAQController {

	@Autowired  
	private InterFAQService service;
	
	@Autowired
	private FileManager fileManager;
	
	
	@RequestMapping(value="/FAQ_view.st")
	public ModelAndView FAQ_view(HttpServletRequest request, ModelAndView mav) {
		
		String seq = request.getParameter("seq");
		
		String gobackURL = request.getParameter("gobackURL");
		mav.addObject("gobackURL", gobackURL);
		
		FAQVO boardvo = null;
			
		boardvo = service.getViewWithNoAddCount(seq);

		mav.addObject("boardvo", boardvo);
		
		mav.setViewName("FAQ/view.tiles1");
		
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_list.st", method= {RequestMethod.GET})
	public ModelAndView FAQ_list(HttpServletRequest request, ModelAndView mav) {

		List<FAQVO> boardList = null;

		String str_currentShowPageNo = request.getParameter("currentShowPageNo"); 
		
		int totalCount = 0;         // 총게시물 건수
		int sizePerPage = 4;        // 한 페이지당 보여줄 게시물 수 
		int currentShowPageNo = 0;  // 현재 보여주는 페이지번호로서, 초기치로는 1페이지로 설정함.
		int totalPage = 0;          // 총 페이지수(웹브라우저상에 보여줄 총 페이지 갯수, 페이지바) 
		
		int startRno = 0;           // 시작 행번호
		int endRno = 0;             // 끝 행번호

		totalCount = service.getTotalCountWithNOsearch();

		totalPage = (int) Math.ceil( (double)totalCount/sizePerPage );  
		
		if(str_currentShowPageNo == null) {
			
			currentShowPageNo = 1;
		}
		else {
			
			try {
				  currentShowPageNo = Integer.parseInt(str_currentShowPageNo);
				
				  if(currentShowPageNo < 1 || currentShowPageNo > totalPage) {
					  currentShowPageNo = 1;
				  }
			} catch (NumberFormatException e) {
				  currentShowPageNo = 1;
			}
		}
	
		startRno = ((currentShowPageNo - 1) * sizePerPage) + 1;
		endRno = startRno + sizePerPage - 1;
		
		HashMap<String,String> paraMap = new HashMap<String,String>(); 
		
		paraMap.put("startRno", String.valueOf(startRno));
		paraMap.put("endRno", String.valueOf(endRno));
	
		boardList = service.boardListWithPaging(paraMap);
		
		mav.addObject("paraMap", paraMap);
		
		
		// ==== 페이지바 만들기 ==== // 
		String pageBar = "<ul>";
		
		int blockSize = 5;
		
		int loop = 1;
		
		int pageNo = ((currentShowPageNo - 1)/blockSize) * blockSize + 1;

	    String url = "FAQ_list.st";
	    
		String lastStr = url.substring(url.length()-1);
		if(!"?".equals(lastStr)) 
			url += "?"; 
		
		// *** [이전] 만들기 *** //    
		if(currentShowPageNo != 1) {
			pageBar += "&nbsp;<a href='"+url+"&currentShowPageNo="+(currentShowPageNo-1)+"&sizePerPage="+sizePerPage+"'>&laquo;</a>&nbsp;";
		}
		
		while( !(loop>blockSize || pageNo>totalPage) ) {
			
			if(pageNo == currentShowPageNo) {
				pageBar += "&nbsp;<span class='active'>"+pageNo+"</span>&nbsp;";
			}
			else {
				pageBar += "&nbsp;<a href='"+url+"&currentShowPageNo="+(currentShowPageNo+1)+"&sizePerPage="+sizePerPage+"'>"+pageNo+"</a>&nbsp;"; 
			}
			
			loop++;
			pageNo++;
		}// end of while---------------------------------
		
		// *** [다음] 만들기 *** //
		if( !(currentShowPageNo == totalPage) ) {
			pageBar += "&nbsp;<a href='"+url+"&currentShowPageNo="+pageNo+"&sizePerPage="+sizePerPage+"'>&raquo;</a>&nbsp;"; 
		}
		
		pageBar += "</ul>";
		
		mav.addObject("pageBar", pageBar);
		

		String gobackURL = MyUtil.getCurrentURL(request);
		mav.addObject("gobackURL", gobackURL);
		
		mav.addObject("boardList", boardList);
		
		mav.setViewName("FAQ/list.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_add.st")
	public ModelAndView FAQ_add(ModelAndView mav) {

		mav.setViewName("FAQ/add.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_addEnd.st", method= {RequestMethod.POST})
	public ModelAndView FAQ_addEnd(FAQVO boardvo, ModelAndView mav) {

		// *** 크로스 사이트 스크립트 공격에 대응하는 안전한 코드(시큐어 코드) 작성하기 ***
		boardvo.setSubject( MyUtil.replaceParameter(boardvo.getSubject()) ); // vo에서 글제목 읽어와서 바꾸어서 vo에 다시 넣기		
		boardvo.setContent( MyUtil.replaceParameter(boardvo.getContent()) );
		boardvo.setContent( boardvo.getContent().replaceAll("\r\n", "<br/>") ); // vo에서 글내용 읽어와서 엔터는 <br/>로 바꾸어 vo에 다시 넣기
		
		int n = service.add(boardvo); 
		
		mav.addObject("n", n);
		
		mav.setViewName("FAQ/addEnd.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_del.st", method= {RequestMethod.GET})
	public ModelAndView FAQ_del(HttpServletRequest request, ModelAndView mav) {

		String seq = request.getParameter("seq");
		
		mav.addObject("seq", seq);
		
		mav.setViewName("FAQ/del.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_delEnd.st", method= {RequestMethod.POST})
	public ModelAndView FAQ_delEnd(HttpServletRequest request, ModelAndView mav) {

		String seq = request.getParameter("seq");
		String pw = request.getParameter("pw");
		
		FAQVO boardvo = new FAQVO();
		boardvo.setSeq(seq);
		boardvo.setPw(pw);
		
		int n = service.del(boardvo);  
		
		if(n == 0) {
			 mav.addObject("msg", "암호가 일치하지 않아 글삭제가 불가합니다.");
		}
		else {
			mav.addObject("msg", "글삭제 성공!!");
		}
		
		mav.addObject("loc", request.getContextPath()+"/FAQ_list.st"); 
		mav.setViewName("msg");
	
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_edit.st", method= {RequestMethod.GET})
	public ModelAndView FAQ_edit(HttpServletRequest request, ModelAndView mav) {

		String seq = request.getParameter("seq");
		
		FAQVO boardvo = service.getViewWithNoAddCount(seq);

		mav.addObject("boardvo", boardvo);
		mav.setViewName("FAQ/edit.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_editEnd.st", method= {RequestMethod.POST})
	public ModelAndView FAQ_editEnd(HttpServletRequest request, FAQVO boardvo, ModelAndView mav) {

		// *** 크로스 사이트 스크립트 공격에 대응하는 안전한 코드(시큐어 코드) 작성하기 *** //
		boardvo.setSubject(MyUtil.replaceParameter(boardvo.getSubject()));
		boardvo.setContent(MyUtil.replaceParameter(boardvo.getContent()));  	   
		boardvo.setContent(boardvo.getContent().replaceAll("\r\n", "<br/>"));
		
		int n = service.edit(boardvo);
		
		if(n==0) {
			mav.addObject("msg", "암호가 일치하지 않아 글 수정이 불가합니다.");
		}
		else {
			mav.addObject("msg", "글수정 성공!!");
		}
		
		mav.addObject("loc", request.getContextPath()+"/FAQ_view.st?seq="+boardvo.getSeq());
		mav.setViewName("msg");
	
		return mav;
	}
	
	
	// ==== 스마트에디터. 드래그앤드롭을 사용한 다중사진 파일업로드 ====
   @RequestMapping(value="/image/multiplePhotoUpload.st", method={RequestMethod.POST})
   public void multiplePhotoUpload(HttpServletRequest req, HttpServletResponse res) {

	HttpSession session = req.getSession();
	String root = session.getServletContext().getRealPath("/"); 
	String path = root + "resources"+File.separator+"photo_upload";
		
	System.out.println(">>>> 확인용 path ==> " + path); 
	  
		
	File dir = new File(path);
	if(!dir.exists())
	    dir.mkdirs();
		
	String strURL = "";
		
	try {
		if(!"OPTIONS".equals(req.getMethod().toUpperCase())) {
		    String filename = req.getHeader("file-name"); //파일명을 받는다 - 일반 원본파일명
	    		
	        System.out.println(">>>> 확인용 filename ==> " + filename); 
	        
	        
	    	   InputStream is = req.getInputStream();
	    	
	    	   String newFilename = fileManager.doFileUpload(is, filename, path);
	    	
		   int width = fileManager.getImageWidth(path+File.separator+newFilename);
			
		   if(width > 600)
		      width = 600;
				
		   System.out.println(">>>> 확인용 width ==> " + width);

		   
		   String CP = req.getContextPath(); 
			
		   strURL += "&bNewLine=true&sFileName="; 
            	   strURL += newFilename;
            	   strURL += "&sWidth="+width;
            	   strURL += "&sFileURL="+CP+"/resources/photo_upload/"+newFilename;
	    	}
		
		   PrintWriter out = res.getWriter();
		   out.print(strURL);
	} catch(Exception e){
			e.printStackTrace();
	}
   
   }

}
