<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>자산 기입 페이지</title>
<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Open+Sans&display=swap"
	rel="stylesheet">
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/bootstrap-icons.css" rel="stylesheet">
<link href="/css/templatemo-topic-listing.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
</head>
<body id="top">
	<main>

	<!-- header include -->
	<jsp:include page="/WEB-INF/jsp/common/header2.jsp" />
		<section class="section-padding section-bg">
			<div class="container">
				<div class="row">
					<!-- 자산 정보 기입란 -->
					<div class="col-lg-6 col-12">
						<form action="assetinput_action" method="post"
							class="custom-form contact-form" role="form">
							<div class="row">
								<div class="col-lg-12 col-12">
									<h3 class="mb-4 pb-2">자산 정보를 입력하세요</h3>
									<h6 class="mb-4 pb-2">단, 모르는 정보는 입력하지 마세요 (연금은 현재 기준으로 작성)</h6>

								</div>

								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="fin_asset" class="form-control"
											required="" value=0 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>금융자산(만원)</b></label>
									</div>
								</div>
								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="real_asset" class="form-control"
											required="" value=0 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>실물자산(만원)</b></label>
									</div>
								</div>
								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="pure_asset" class="form-control"
											required="" value=0 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>현금(만원)</b></label>
									</div>
								</div>
								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="debt" class="form-control"
											required="" value=0 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>부채(만원)</b></label>
									</div>
								</div>
								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="monthly_income" class="form-control"
											required="" value=0 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>월 소득(만원)</b></label>
									</div>
								</div>
								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="annuity" class="form-control"
											required="" value=0 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>연금(만원)</b></label>
									</div>
								</div>
								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="hope_age" class="form-control"
											required="" value=60 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>입주 예상 (만)나이</b></label>
									</div>
								</div>
								<div class="col-lg-10 col-12">
									<div class="form-floating">
										<input type="text" name="hope_period" class="form-control"
											required="" value=1 onfocus="clearDefaultValue(this)"
											onblur="restoreDefaultValue(this)" /> <label
											for="floatingInput"><b>희망 거주 기간(년)</b></label>
									</div>
								</div>


								<div class="col-lg-6 col-12" id="asset_input_bt">
									<button type="submit" class="form-control">등록하기</button>
								</div>
							</div>
						</form>
					</div>

					<!-- 상세 보기란 -->
					<div class="col-lg-6 col-12">
						<form class="custom-form contact-form" role="form">
							<div class="row">
								<div class="col-lg-12 col-12">
									<h3 class="mb-4 pb-2">궁금해요 ! !</h3>
									<div id="imageContainer">

										<img src="https://i.ibb.co/C50116J/friends-Bibi.png"
											alt="friends-Bibi" border="0" id="image1"
											style="opacity: 1; margin-left: 73px;"> <img
											src="https://i.ibb.co/1q2ynH4/friends-Ramu.png"
											alt="friends-Ramu" border="0" id="image2"
											style="opacity: 1; margin-left: 28px;"> <img
											src="https://i.ibb.co/60VVQCn/friends-Kiki.png"
											alt="friends-Kiki" border="0" id="image3"
											style="opacity: 1; margin-left: 5px;"><img
											src="https://i.ibb.co/4JzFLjb/friends-Cauli.png"
											alt="friends-Cauli" border="0" id="image4"
											style="opacity: 1; margin-left: 15px;">
									</div>
									<!-- 폼 필드 및 내용을 추가하십시오 -->
								</div>

								<!-- 탭 네비게이션 -->
								<ul class="nav nav-tabs" id="myTabs" role="tablist">
									<li class="nav-item" role="presentation"><a
										class="nav-link" id="tab1-tab" data-toggle="tab" href="#tab1"
										role="tab" aria-controls="tab1" aria-selected="false"><b>금융자산</b></a>
									</li>
									<li class="nav-item" role="presentation"><a
										class="nav-link" id="tab2-tab" data-toggle="tab" href="#tab2"
										role="tab" aria-controls="tab2" aria-selected="false"><b>실물자산</b></a>
									</li>
									<li class="nav-item" role="presentation"><a
										class="nav-link" id="tab3-tab" data-toggle="tab" href="#tab3"
										role="tab" aria-controls="tab3" aria-selected="false"><b>현금</b></a></li>
									<li class="nav-item" role="presentation"><a
										class="nav-link" id="tab4-tab" data-toggle="tab" href="#tab4"
										role="tab" aria-controls="tab4" aria-selected="false"><b>부채</b></a></li>
								</ul>

								<!-- 탭 콘텐츠 -->
								<div class="tab-content" id="myTabsContent">
									<div class="tab-pane fade" id="tab1" role="tabpanel"
										aria-labelledby="tab1-tab">
										<p>

											<b>금융자산</b>은 현금, 은행 예금, 주식, 채권, 투자 펀드 등과 같은 <b>보유 하신
												금융상품의 재산</b>입니다.
										</p>
										<!-- <img src="https://i.ibb.co/BNtVN2D/pure-asset.png" alt="pure-asset" border="0"> -->
									</div>
									<div class="tab-pane fade" id="tab2" role="tabpanel"
										aria-labelledby="tab2-tab">
										<p>
											<b>실물자산</b>은 부동산, 자동차, 보석, 예술품, 비즈니스 등과 같은 <b>실질적인 물건</b>을
											나타냅니다.
										</p>
									</div>
									<div class="tab-pane fade" id="tab3" role="tabpanel"
										aria-labelledby="tab3-tab">
										<p>
											<b>현금</b>은 금융자산과 실물자산을 제외한 <b>보유 하신 현금</b>을 나타냅니다.
										</p>
									</div>
									<div class="tab-pane fade" id="tab4" role="tabpanel"
										aria-labelledby="tab4-tab">
										<p>
											<b>부채</b>는 개인 또는 가구가 다른 개인, 기업 또는 <b>금융 기관에 대해 갚아야 할 돈</b>을
											나타냅니다. 주택 대출, 신용카드 빚, 학자금 대출 등이 예시입니다.
										</p>
									</div>
								</div>


								<!-- 다른 폼 필드도 유사하게 추가하십시오 -->
								<div></div>

							</div>
						</form>
					</div>
				</div>
			</div>
		</section>



		


		<!-- JAVASCRIPT FILES -->
		<script src="/js/jquery.min.js"></script>
		<!--  자산 정보 기입란에 사용 -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script>
			function clearDefaultValue(input) {
				if (input.value === input.defaultValue) {
					input.value = '';
				}
			}
			function restoreDefaultValue(input) {
				if (input.value === '') {
					input.value = input.defaultValue;
				}
			}
		</script>
		
		<!-- footer include -->
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
		
		
		<script src="/js/bootstrap.bundle.min.js"></script>
		<script src="/js/jquery.sticky.js"></script>
		<script src="/js/click-scroll.js"></script>
		<script src="/js/custom.js"></script>


		<!-- KB 캐릭터 이미지 보여주기 효과 -->
		<script src="/js/asset_info_effect_images.js"></script>


	</main>
</body>
</html>