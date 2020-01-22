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
 #main{
    min-height: 100%;
    padding: 72px 0 408px;
    margin-top: -72px;
    background: #ebebeb;
    box-sizing: border-box;
}

.result-section{
    padding: 3pc 0 72px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/level_test_result_recommendation/texture_shortbg.036f8104f337.png)50% 50%;
    background-size: cover;
}

.content-wrap{
    margin: 0 auto;
    width: 60pc;
}

.level-test-result-wrap{
	position: relative;
    border-radius: 6px;
    box-shadow: 0 3px 60px rgba(0,0,0,.12);
    background: #fff;
}

.result-box{
    display: inline-block;
    vertical-align: top;
    width: 452px;
    box-sizing: border-box;
    padding: 72px 0 72px 72px;
    border-radius: 6px 0 0 6px;
}
.result-label {
	width: 76px;
    height: 20px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/level_test_result_recommendation/assets.f6759e581b7f.png);
}

.result-q{
	margin: 9pt 0 24px;
    font-size: 42px;
    line-height: 1.29em;
    font-weight: 300;
    color: #484b53;
}

.highlight{
	font-weight: 800;
}

.level-wrap{
	display: inline-block;
    height: 52px;
    border-radius: 26px;
    padding: 0 18px 0 24px;
    background: #ef6c00;
    line-height: 52px;
    font-size: 21pt;
    font-weight: 800;
    color: #fff;
}

.level-label{
	display: inline-block;
    vertical-align: top;
    margin: 10px 25px 0 0;
    width: 3pc;
    height: 18px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/level_test_result_recommendation/assets.f6759e581b7f.png)-93pt 0;
}

.checked {
	display: inline-block;
    vertical-align: top;
    margin: 9pt 0 0 9pt;
    width: 28px;
    height: 28px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/level_test_result_recommendation/assets.f6759e581b7f.png)-220px 0;
}

.level-description-bg {
	position: absolute;
    top: 0;
    left: 452px;
    right: 0;
    bottom: 0;
    border-radius: 0 6px 6px 0;
    background: #fafafa;
}

.level-description-wrap {
	position: relative;
    display: inline-block;
    vertical-align: top;
    border-radius: 0 6px 6px 0;
    box-sizing: border-box;
    width: 508px;
    padding: 90pt 72px 0 60px;
}

.description-label {
	width: 218px;
    height: 18px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/level_test_result_recommendation/assets.f6759e581b7f.png)-266px -68px;
}

.description-lines {
	margin-top: 1pc;
    border-left: 2px solid #ff6c00;
    padding-left: 1pc;
    
}

.line-wrap {
	position: absolute;
    left: 474px;
    bottom: -9pc;
}

.line-start {
	box-sizing: border-box;
    width: 9pt;
    height: 9pt;
    border-radius: 6px;
    border: 2px solid rgba(0,0,0,.16);
}

.line{
	height: 168px;
    width: 2px;
    margin-left: 5px;
    background: rgba(0,0,0,.16);
}

.content-wrap{
	margin: 0 auto;
    padding: 90pt 0;
    width: 60pc;
}

.section-label {
    margin: 0 auto 72px;
    width: 472px;
    height: 186px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/level_test_result_recommendation/assets.f6759e581b7f.png)0 -168px;
}
</style>

</head>

<body>

	<section id="main">
		<div id="level-test-result">
			<div class="result-section">
				<div class="content-wrap">
					<div class="level-test-result-wrap">
						<!--  -->
						<div class="result-box">
							<div class="result-label">
							</div>
							<div class="result-q">
							"XXX"
							"님의"
							<br>
							<span class="highlight">스터디서치 레벨은?</span>
							</div>
							<div class="level-wrap">
							<span class="level-label"></span>
							"초급"
							<span class="checked"></span>
							</div>
						</div>
						<!--  -->
						<div class="level-description-bg">						
							<div class="level-description-wrap">
								<div class="description-label"></div>
								<ul class="description-lines">
									<li class="description-line">중학교 영단어 수준까지 흐릿하게 기억나요. </li>
									<li class="description-line">학창시절 문법을 배웠지만 기억에 남아있지 않아요. </li>
									<li class="description-line">기본 문장 한마디는 영어로 만들 수 있지만, 조금만 길어져도 막혀요.</li>
									<li class="description-line">외국인이 말을 하면 20-30% 정도 알아들어요.</li>
								</ul>							
							</div>
						</div>
						
						<div class="line-wrap">
							<div class="line-start">
							</div>
							<div class="line">
							</div>
						</div>						
					</div>														
				</div>								
			</div><!-- //result-section -->
			
			<div class="study-section">
				<div class="content-wrap">
					<div class="section-label"></div>
					<div>
					</div>
				</div>
			</div>		
		
		</div>	
	</section>


</body>
</html>