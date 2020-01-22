<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String ctxPath = request.getContextPath();
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.content-wrap {
    background: #fff;
    margin: 24px auto 0;
    width: 60pc;
    min-height: 500px;
}

.header-title-wrap {
    position: relative;
    box-sizing: border-box;
    display: block;
    margin: 0 auto;
    width: 60pc;
    height: 100%;
    padding-top: 300px;
}

 .content-wrap .content {
    padding: 60px 0;
    border-bottom: 1px solid #f2f2f2;
}

div {
    display: block;
}

.header-title-icon {
    font-size: 14px;
    color: #fff;
}

 .content-wrap .content .swiper-with-buttons-wrap {
    position: relative;
}

 .content-wrap .content .theme-study-list-wrap .study-wrap {
    display: inline-block;
    margin-right: 10px;
    width: 300px;
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
    -webkit-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
}

 .content-wrap .content .content-title {
    font-size: 30px;
    font-weight: 800;
    color: #333;
}

 .content-wrap .content .content-title {
    font-size: 30px;
    font-weight: 800;
    color: #333;
}

 .content-wrap .content .description {
    margin-top: 6px;
    font-size: 1pc;
    color: #a0a0a0;
}

 .content-wrap .content .theme-study-list-wrap .study-wrap .date-label {
    padding: 1pc 0 14px;
    border-bottom: 1px solid #ebebeb;
    text-align: center;
    background: #f2f2f2;
    font-size: 14px;
    font-weight: 800;
    color: #787878;
}

.content-wrap .content .theme-study-list-wrap .study-wrap .study-thumbnail {
    position: relative;
    width: 100%;
    height: 15pc;
    background-size: cover;
    background-position: 50% 50%;
}

.content-wrap .content .theme-study-list-wrap .study-wrap .study-title {
    margin-top: 19px;
    font-size: 18px;
    font-weight: 800;
    color: #333;
}

 .content-wrap .content .theme-study-list-wrap .study-wrap .study-area {
    margin-top: 4px;
    font-size: 14px;
    color: #a0a0a0;
}

.content-wrap .content .swiper-with-buttons-wrap .next-button.swiper-button-disabled, #theme-study-list-page 
.content-wrap .content .swiper-with-buttons-wrap .previous-button.swiper-button-disabled {
    display: none;
}

.swiper-wrapper {
display: inline-block;

}

.content-wrap .content {
    padding: 60px 0 60px 0;
    
    border-bottom: 1px solid #f2f2f2;
}

.content-wrap .content2 {
    padding: 60px 0 60px 0;
    
    border-bottom: 1px solid #f2f2f2;
}

 .middle-section .middle-title-wrap .middle-title {
    margin-top: 130px;
    font-size: 42px;
    font-weight: 800;
    line-height: 1.21;
    color: #fff;
}

 .middle-section .middle-title-wrap .middle-sub-title {
    margin-top: 9pt;
    font-size: 18px;
    color: #fff;
}

.middle-section .middle-title-wrap .start-link {
    display: block;
    margin-top: 25px;
    padding: 20px 0;
    box-sizing: border-box;
    border-radius: 2px;
    border: 2px solid #fff;
    width: 175px;
    height: 60px;
    font-size: 1pc;
    text-align: center;
    font-weight: 700;
    color: #fff;
}

.recruiting-label {
	color: white;

}

.middle-section {
    overflow: hidden;
    width: 100%;
    height: 5in;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/theme_study_middle_background.ca4c318c2113.png);
}

.last-section .last-title-wrap .last-title {
    font-size: 30px;
    font-weight: 800;
    text-align: center;
    color: #333;
}

.last-section .last-title-wrap .last-sub-title {
    margin-top: 6px;
    font-size: 1pc;
    text-align: center;
    color: #a0a0a0;
}

.last-section .regram-wrap {
    margin-top: 30px;
    padding-bottom: 168px;
    width: 100%;
}
.last-section .regram-wrap .regram {
    margin: 0 auto;
    width: 100%;
    height: 194px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/theme_study_regram.adde7affa090.png)no-repeat center;
}

</style>
</head>
<body>
	<div class="page-header">
		<!-- <div class="video-contain">
			<div data-vjs-player="true" id="vjs_video_3" class="video-js vjs-controls-disabled vjs-workinghover vjs-v7 vjs_video_3-dimensions vjs-playing vjs-has-started vjs-user-inactive" tabindex="-1" lang="ko-kr" role="region" aria-label="Video Player"><video class="vjs-tech" id="vjs_video_3_html5_api" tabindex="-1" loop="" muted="muted" playsinline="playsinline" autoplay="" src="https://cdn.studysearch.co.kr/static/desktop-theme-study-top-video.mp4"></video>
			</div>
		</div> -->	
	
		<div class="header-title-wrap">
			<div class="header-title-icon">
				<span class="new">
				</span>·
				<span class="only-member">
				</span>
			</div>
			<div class="header-title">테마스터디
			</div>
			<div class="header-sub-title">스터디서치 멤버들만을 위한 특별한 시간!<br>새로운 문화를 경험하고, 새로운 사람들을 만나보세요.</div>
		</div>
	</div>

	<div class="content-wrap">
		<div class="content">
		<div class="content-title">리더와 함께<span class="new"></span>
		</div>
		<div class="description">스터디서치의 다양한 리더와 함께하는 시간
		</div>
			<div class="swiper-with-buttons-wrap"><div id="with-leader-studies-wrap" class="theme-study-list-wrap swiper-container-horizontal">
				<div class="swiper-wrapper">
				<div class="content">
					<div class="study-wrap swiper-slide swiper-slide-active">
						<a href="https://docs.google.com/forms/d/e/1FAIpQLSd75xMjccX8Waxm6XzgiHdasWV9fhsieomdLiTIYFOYAsNtQA/viewform?usp=sf_link" target="_blank">
						<div class="date-label">종료된 테마스터디
						</div>
						<div class="study-thumbnail" style="background-image: url(&quot;https://cdn.studysearch.co.kr/images/theme-study/25/1568894015.21?v=1568894015&quot;);">
						<div class="recruiting-label off">완료됨</div>
						</div>
						<div class="study-title">외국인 친구들과 🎉2019 Year-end 연말파티
						</div>
						<div class="study-area">@강남</div>
						</a>
					</div>
					<div class="study-wrap swiper-slide swiper-slide-next">
						<a href="https://docs.google.com/forms/d/e/1FAIpQLSdLwBnT_o5ZlekPhTjD6OLFSpbdYDoUksQSz6GsHGHnQbgERw/viewform?usp=sf_link" target="_blank">
						<div class="date-label">종료된 테마스터디
						</div>
						<div class="study-thumbnail" style="background-image: url(&quot;https://cdn.studysearch.co.kr/images/theme-study/28/1576724775.06?v=1576724775&quot;);">
						<div class="recruiting-label off">완료됨</div>
						</div>
						<div class="study-title">스서의 리더/멤버들과💗미국식 크리스마스 파티🎄</div>
						<div class="study-area">@홍대</div>
						</a>
					</div>
					<div class="study-wrap swiper-slide">
						<a href="https://docs.google.com/forms/d/e/1FAIpQLSdUOyk0chCcXlO4fQa3ci5yF-Zim9yjxPi7W9B2DVpfBxv2Lg/viewform?usp=sf_link" target="_blank">
						<div class="date-label">종료된 테마스터디
						</div>
						<div class="study-thumbnail" style="background-image: url(&quot;https://cdn.studysearch.co.kr/images/theme-study/16/1557076677.34?v=1557076677&quot;);">
						<div class="recruiting-label off">완료됨
						</div>
						</div>
						<div class="study-title">스서 인싸리더들과🙌Sleepover Party!🎉
						</div>
						<div class="study-area">@압구정
						</div>
						</a>
					</div>
				</div>		
				<div class="content2">
					<div class="content-title">멤버들과 함께<span class="new"></span>	
					</div>
					<div class="description">핫한 스서피플들과 함께하는 시간
					</div>
					<div class="swiper-with-buttons-wrap">
						<div id="with-member-studies-wrap" class="theme-study-list-wrap swiper-container-horizontal">
							<div class="swiper-wrapper">
								<div class="study-wrap swiper-slide swiper-slide-active">
									<a href="<%=ctxPath%>/themaform.st" target="_blank">
									<div class="date-label">1월 매주 금/토
									</div>
									<div class="study-thumbnail" style="background-image: url(&quot;https://cdn.studysearch.co.kr/images/theme-study/27/1577871192.97?v=1577871193&quot;);">
										<div class="recruiting-label on">신규 모집
										</div>
									</div>
									<div class="study-title">스터디서치 신입생😄🤟1월 Welcome Party!
									</div>
									<div class="study-area">@홍대·강남
									</div>
									</a>
								</div>
								<div class="study-wrap swiper-slide swiper-slide-next">
									<a href="https://docs.google.com/forms/d/e/1FAIpQLSe1UboS1JRK1Ix6GOg43WJA5AJ4nj83pAHv6kSw6WoGa5lKXA/viewform?usp=send_form" target="_blank">
									<div class="date-label">1월 18일(토)
									</div>
									<div class="study-thumbnail" style="background-image: url(&quot;https://cdn.studysearch.co.kr/images/theme-study/30/1578668433.35?v=1578668433&quot;);">
										<div class="recruiting-label on">신규 모집
										</div>
									</div>
									<div class="study-title">해외축구 같이볼래요?Football Night! 🍻⚽
									</div>
									<div class="study-area">@홍대
									</div>
									</a>
								</div>
								<div class="study-wrap swiper-slide">
									<a href="https://docs.google.com/forms/d/e/1FAIpQLSeVPnat6ncGe-rm7t5PVAY3Ao6X7aV5oaXlFmJfyOePWcn9Lg/viewform?usp=sf_link" target="_blank">
									<div class="date-label">종료된 테마스터디</div>
									<div class="study-thumbnail" style="background-image: url(&quot;https://cdn.studysearch.co.kr/images/theme-study/26/1570444195.81?v=1570444195&quot;);">
										<div class="recruiting-label off">완료됨
										</div>
									</div>
									<div class="study-title">10월의 Halloween Festival! 🎃 🎃  모두 같이 즐겨요!
									</div>
									<div class="study-area">@양재
									</div>
									</a>
								</div>								
							</div>
						 </div>		
					  </div>
				   </div>
				   
				   <div class="middle-section">
				      <div class="middle-title-wrap">
				      	 <div class="middle-title">스터디서치에서는<br>즐거운 만남이 끊이지 않는다!</div>
				      	 <div class="middle-sub-title">이제 여러분도 함께 해요!</div>
				      	 <a class="start-link" href="<%=ctxPath%>/leveltest.st">스터디 시작하기</a>
				      </div>
				   </div>
		   
				   <div class="last-section">
				   	  <div class="last-title-wrap">
				   	      <div class="last-title">#스터디서치 on Instagram</div>
				   	      <div class="last-sub-title">스서 피플의 핫한 인스타후기</div>
				   	  </div>
			   	      <div class="regram-wrap"><div class="regram">
			   	      </div>
			   	      </div>
			   	    </div>
					  	
				  	 </div>
				  	 <div class="regram-wrap">
					  	 <div class="regram">
					  	 </div>
				  	 </div>				  	 
			  </div>
			</div> 
		   </div>
	  	 </div>




</html>