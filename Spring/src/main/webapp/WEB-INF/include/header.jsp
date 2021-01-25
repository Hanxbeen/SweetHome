<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value='${pageContext.request.contextPath}' var='root' scope="session" />

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<!-- Third party plugin -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/happyhouse/css/styles.css" rel="stylesheet" />

<!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<!-- Core theme JS-->
<!-- <script src="/js/scripts.js"></script> -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="/happyhouse/assets/img/logo.png" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <c:choose>
                <c:when test="${user ne null}">
	                    <ul class="navbar-nav ml-auto my-2 my-lg-0" id="loginNav">
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${root}/">공지사항</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/">QnA</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${root}/search/house">검색</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">관심지역</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${root}/user/edit">회원정보</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${root}/user/logout">로그아웃</a></li>
	                    </ul>
                </c:when>
                <c:otherwise>
	                    <ul class="navbar-nav ml-auto my-2 my-lg-0" id="logoutNav">
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">공지사항</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/">QnA</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal"
	                                data-target="#loginModal">로그인</a></li>
	                        <li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal"
	                                data-target="#signupModal">회원가입</a></li>
	                    </ul>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>
<div class="modal" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h3 class="modal-title">SSAFY HOUSE</h3>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <form class="form-signin" method="post" action="${root }/user/login">
                    <input type="hidden" name="action" value="login">
                    <div class="form-label-group">
                        <label for="inputEmail">아이디</label>
                        <input type="text" id="inputEmail" name="userid" class="form-control" placeholder="Email address" required
                            autofocus>
                    </div>
                    <br>
                    <div class="form-label-group">
                        <label for="inputPassword">비밀번호</label>
                        <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="custom-control custom-checkbox mb-3">
                        <label class="custom-control-label" for="customCheck1">비밀번호를 기억합니다.</label>
                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                    </div>
                    <br>
                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit"
                        style="background-color:#3366ff;">로그인</button>
                </form>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="signupModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h3 class="modal-title">SSAFY HOUSE</h3>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <form class="form-signin" method="post" action="${root }/user/regist">
                    <input type="hidden" name="action" value="join">
                    <div class="form-label-group">
                        <label for="inputEmail">아이디</label>
                        <input type="text" id="inputEmail" name="userid" class="form-control" placeholder="id" required>
                    </div>
                    <br>
                    <div class="form-label-group">
                        <label for="inputPassword">비밀번호</label>
                        <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="password" required>
                    </div>
                    <br>
                    <div class="form-label-group">
                        <label for="confirmPassword">비밀번호 확인</label>
                        <input type="password" id="confirmPassword" class="form-control" placeholder="confirm"
                            required>
                    </div>
                    <div class="form-label-group">
                        <label for="inputName">이름</label>
                        <input type="text" id="inputName" name="name" class="form-control" placeholder="name"
                            required>
                    </div>
                    <br>
                    <div class="form-label-group">
                        <label for="inputPhone">전화번호</label>
                        <input type="text" id="inputPhone" name="number" class="form-control" placeholder="phone number">
                            </div>
                            <br>
                            <div class=" form-label-group">
                        <label for="inputAddress">주소</label>
                        <input type="text" id="inputAddress" name="address" class="form-control" placeholder="address">
                    </div>
                    <br>
                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit"
                        style="background-color:#3CB371;">가입하기</button>
                </form>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>