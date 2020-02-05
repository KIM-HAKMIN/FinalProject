<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#first_container{
		border: solid 1px black;
		margin: 0 400px;
		overflow: hidden;
		background: white;
	}

	#mainhead{
		/* border: solid 1px navy; */
		margin: 10px 10px 0 10px;
		height: 72px;
    	background: #5f6b7a ;
    	border-radius: 4px;
    	text-align: right;
	}
	
	#stages {
    display: inline-block;
    width: 10pc;
    height: 72px;
    line-height: 72px;
    font-size: 10pt;
    text-align: center;
    color: #9da6b1;
	}

	.spaces {
	border-right: solid 1px gray; 
	height: 72px; 
	display: inline-block; 
	padding: 0 20px;"
	}
	
	#stage2-help {
    float: left;
    padding-right: 30px;
    width: 360px;
    box-sizing: border-box;
}
	
	#price-section {
    margin-left: 24px;
    padding-bottom: 24px;
    border-bottom: 1px solid #f2f2f2;
}
	
#price-wrap {
    overflow: hidden;
    margin-top: 36px;
}	
	
 h1 {
    width: 260px;
    line-height: 1.6em;
    font-size: 15pt;
}	
	
    .label {
    float: left;
    clear: right;
    display: block;
    font-size: 9.5pt;
    color: #a0a0a0;
}
	
	
   .price {
    float: right;
    display: block;
    color: #ef6c00;
    font-size: 18pt;
    font-weight: 700;
}	

 .leader-help-message-wrap {
 	margin-top: 24px;
 	padding-right: 50px;
    position: relative;
    display: inline-block;
    margin-left: 50px;
    box-sizing: border-box;
    padding: 24px 0 24px 24px;
    vertical-align: bottom;
    background: #f8f8f8;
    border-radius: 2px;
    font-size: 11pt;
}	

 .leader-help-message {
    font-size: 14px;
    line-height: 1.6em;
}

 .message-from {
    margin-top: 9pt;
    font-size: 9.5pt;
    color: #a0a0a0;
}

 .leader-photo {
    position: absolute;
    bottom: 0;
    left: -3pc;
    width: 3pc;
    height: 3pc;
    border-radius: 50%;
}

#payment-section {
    float: left;
    width: 552px;
    box-sizing: border-box;
    padding-left: 36px;
    border-left: 1px solid #f2f2f2;
}

 #credit-section {
    overflow: hidden;
    padding: 3pc 0;
}

#payment-section .label {
    float: left;
    width: 113px;
    font-size: 1pc;
}

.credit-usage {
    display: inline-block;
    padding: 14px 1pc;
    border-radius: 4px;
    border: 1px solid #cfdadc;
    font-size: 10pt;
    box-sizing: border-box;
    width: calc(100% - 94px);
}

 .use-credit {
    display: inline-block;
    padding: 14px 1pc;
    border-radius: 4px;
    border: 1px solid #cfdadc;
    font-size: 10pt;
    box-sizing: border-box;
    width: 82px;
    height: 44px;
    border: none;
    background: #5f6b7a;
    color: #fff;
    font-size: 9pt;
    outline: 0;
}

  .usable-credit {
    margin-top: 18px;
    font-size: 9.5pt;
}

 #payment-methods-wrap {
    overflow: hidden;
    padding: 3pc 0;
    border-top: 1px solid #f2f2f2;
}

 #payment-method-list {
    float: left;
    margin: 0;
    box-sizing: border-box;
    width: calc(100% - 113px);
    padding: 0 18px;
    border: 1px solid #cfdadc;
}

    .mock-radio {
    display: inline-block;
    margin-top: -3px;
    width: 20px;
    height: 20px;
    background: transparent url(https://cdn.studysearch.co.kr/static/images/icon_asset_order.e8fd19146f2f.png)0 -92px no-repeat;
    vertical-align: middle;
    cursor: pointer;
}


 .payment-method input[type=radio]+label {
    display: block;
    height: 54px;
    line-height: 54px;
    box-sizing: border-box;
    padding: 0 1pc;
    font-size: 14px;
    background: #fff;
    border-bottom: 1px solid #f2f2f2;
    border-radius: 2px;
    cursor: pointer;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="first_container">
	<div id="mainhead">
		<div id="stages">
				<div id="spaces">
					<span class="stage" >결제</span>
				</div>
				<div id="spaces">
					<span class="stage">참여신청완료</span>
				</div>
		</div>	
	</div>
		<div id="stage2-help">
			<section id="price-section">
				<h1>참가비 결제</h1>
				<div id="price-wrap">
					<span class="label">결제 예정 금액</span><span class="price">180,000원</span>
				</div>
			</section>
			<div class="leader-help-message-wrap">
				<div class="leader-help-message">신청이 완료되면, 스터디에 대해 자세히 안내드릴게요
					:)</div>
				<div class="message-from">- Sera Kim</div>
				<div class="photo-bridge"></div>
				<img class="leader-photo"
					src="https://cdn.studysearch.co.kr/images/users/66736/profile/1573610167">
			</div>
		</div>

		<section id="payment-section">
			<div id="notify-payment-service">
				<div class="nicepay-logo"></div>
				<div class="content">
					<span class="highlight">NICEPAY</span> 에서 제공하는 안전 결제 서비스입니다.<br>결제
					카드 정보는 <span class="highlight">안전한 나이스페이 전자결제 서비스에 직접 등록</span>되며,
					스터디서치 서버에 별도로 저장되지 않습니다.
				</div>
			</div>
			<section id="credit-section">
				<h1 class="label">적립금 사용</h1>
				<div class="input-credit-wrap">
					<input class="credit-usage" type="number" placeholder="0원">
					<button class="use-credit">적용하기</button>
					<div class="usable-credit">
						사용 가능한 적립금: <span class="amount">0원</span>
					</div>
				</div>
			</section>
			<section id="payment-methods-wrap">
				<h1 class="label">결제 방법</h1>
				<ul id="payment-method-list">
					<li class="payment-method"><input type="radio"
						id="pay-with-card-module" name="payment-method"><label
						for="pay-with-card-module"><span class="mock-radio"></span><span
							class="method-description-wrap">간편 카드 결제<span
								class="method-description">(앱카드, ISP로 결제하기)</span></span></label></li>
					<li class="payment-method"><input type="radio"
						id="pay-with-card" name="payment-method"><label
						for="pay-with-card"><span class="mock-radio"></span><span
							class="method-description-wrap">일반 카드결제<span
								class="method-description">(결제카드 등록 후 진행하기)</span></span></label></li>
					<li class="payment-method"><input type="radio"
						id="pay-with-vbank" name="payment-method"><label
						for="pay-with-vbank"><span class="mock-radio"></span><span
							class="method-description-wrap">무통장 입금<span
								class="method-description">(가상계좌로 3시간 내 입금시 결제완료)</span></span></label></li>
				</ul>
			</section>
			<section id="payment-input">
				<div id="payment-method-undefined" class="payment-method">결제
					방법을 선택해주세요.</div>
			</section>
		</section>

	</div>

</body>
</html>