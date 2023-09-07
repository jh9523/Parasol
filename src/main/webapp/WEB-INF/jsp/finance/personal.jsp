<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>예금디테일</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Open+Sans&display=swap" rel="stylesheet">                       
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <link href="/css/bootstrap-icons.css" rel="stylesheet">
        <link href="/css/templatemo-topic-listing.css" rel="stylesheet">
        <link href="/css/custom.css" rel="stylesheet">

</head>
    <body class="topics-listing-page" id="top">
        <main>

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand" href="index.html">
                        <i class="bi-back"></i>
                        <span>Topic</span>
                    </a>

                    <div class="d-lg-none ms-auto me-4">
                        <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
                    </div>
    
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
    
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-lg-5 me-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="index.html#section_1">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="index.html#section_2">Browse Topics</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="index.html#section_3">How it works</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="index.html#section_4">FAQs</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="index.html#section_5">Contact</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#section_5" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>

                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                    <li><a class="dropdown-item active" href="topics-listing.html">Topics Listing</a></li>

                                    <li><a class="dropdown-item" href="contact.html">Contact Form</a></li>
                                </ul>
                            </li>
                        </ul>

                        <div class="d-none d-lg-block">
                            <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
                        </div>
                    </div>
                </div>
            </nav>
	   <header class="site-header d-flex flex-column justify-content-center align-items-center">
                <div class="container">
                    <div class="row align-items-center">

                        <div class="col-lg-5 col-12">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Homepage</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Topics Listing</li>
                                </ol>
                            </nav>

                            <h2 class="text-white">투자 성향 파악</h2>
                        </div>

                    </div>
                </div>
           </header>


            <section class="section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center">
                            <h3 class="mb-4">KB간단한 투자성향 파악</h3>
                        </div>
				       <div class="col-lg-8 col-12 mt-3 mx-auto">
                           
                           
                           <!-- 개인 투자 성향 파악 form, DTO로 주고받을 것임!! -->
                            <div class="custom-block custom-block-topics-listing bg-white shadow-lg mb-5">
                                <div class="d-flex">
     								<div class="custom-block-topics-listing-info d-flex">
                                        <div>
                                            <p class="mb-0">
											<form action="personal/result" method="post" modelAttribute="toja">
									        <h3>연령</h3>
									        <input type="radio" id="age20s" name="age" value="5">
									        <label for="age20s">20대</label><br>
									        
									        <input type="radio" id="age30s" name="age" value="4">
									        <label for="age30s">30대</label><br>
									
									        <input type="radio" id="age40s" name="age" value="3">
									        <label for="age40s">40대</label><br>
									
									        <input type="radio" id="age50s" name="age" value="2">
									        <label for="age50s">50대</label><br>
									
									        <input type="radio" id="age60s" name="age" value="1">
									        <label for="age60s">60대 이상</label><br>
											<br>
	                                     </div>
                                   </div>
                                </div>
                            </div>

                            <div class="custom-block custom-block-topics-listing bg-white shadow-lg mb-5">
                                <div class="d-flex">
	                                 <div class="custom-block-topics-listing-info d-flex">
                                        <div>
                                            <p class="mb-0">
													<h3>연소득</h3>
											        <input type="radio" id="incomeUnder50" name="income" value="1">
											        <label for="incomeUnder50">5천만원 이하</label><br>
											
											        <input type="radio" id="income70s" name="income" value="2">
											        <label for="income70s">7천만원대</label><br>
											
											        <input type="radio" id="income90s" name="income" value="3">
											        <label for="income90s">9천만원대</label><br>
											
											        <input type="radio" id="incomeOver100" name="income" value="4">
											        <label for="incomeOver100">1억 이상</label><br>
											 </p>
	                                     </div>
			                        </div>
                                </div>
                            </div>
                       
							<input type="submit" value="제출" class="btn custom-btn mt-3 mt-lg-4">									
						    </form>
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       </div>
                    </div>
                </div>
            </section>
      </main>
        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>