<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Simple Sidebar - Start Bootstrap Template</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
   integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
   crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="simple-sidebar.css" rel="stylesheet">
<style>
/*!
 * Start Bootstrap - Simple Sidebar (https://startbootstrap.com/templates/simple-sidebar)
 * Copyright 2013-2020 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-simple-sidebar/blob/master/LICENSE)
 */
#wrapper {
   overflow-x: hidden;
}

#sidebar-wrapper {
   min-height: 100vh;
   margin-left: -15rem;
   -webkit-transition: margin .25s ease-out;
   -moz-transition: margin .25s ease-out;
   -o-transition: margin .25s ease-out;
   transition: margin .25s ease-out;
}

#sidebar-wrapper .sidebar-heading {
   padding: 0.875rem 1.25rem;
   font-size: 1.2rem;
}

#sidebar-wrapper .list-group {
   width: 15rem;
}

#page-content-wrapper {
   min-width: 100vw;
}

#wrapper.toggled #sidebar-wrapper {
   margin-left: 0;
}

@media ( min-width : 768px) {
   #sidebar-wrapper {
      margin-left: 0;
   }
   #page-content-wrapper {
      min-width: 0;
      width: 100%;
   }
   #wrapper.toggled #sidebar-wrapper {
      margin-left: -15rem;
   }
}
</style>
<script>
   $(document).ready(function() {
      $('#dp1').show();
      $('#dp2').hide();
      $('#dp3').hide();
      $('#dp4').hide();
      $("#dpb1").on("click", function() {
         $('#dp1').show();
         $('#dp2').hide();
         $('#dp3').hide();
         $('#dp4').hide();
      });
      $("#dpb2").on("click", function() {
         $('#dp1').hide();
         $('#dp2').show();
         $('#dp3').hide();
         $('#dp4').hide();
      });
      $("#dpb3").on("click", function() {
         $('#dp1').hide();
         $('#dp2').hide();
         $('#dp3').show();
         $('#dp4').hide();
      });
   });
</script>
</head>

<body>

   <%@ include file="/WEB-INF/include/header.jsp"%>
   <!-- Page Content -->
   <div
      style="margin: 0px; width: 100%; height: 300px; background-image: url('./assets/img/bg-house.png');">
      <div class="container" style="text-align: center;">
         <h1 class="mt-5">회원정보</h1>
      </div>
   </div>
   <div class="d-flex" id="wrapper">
      <!-- Sidebar -->
      <div class="bg-light border-right" id="sidebar-wrapper">
         <div style="height: 100%">
            <div class="sidebar-heading">회원 정보</div>
            <div class="list-group list-group-flush" style="height: 20%">
               <a href="${root}/MemberController?action=select&userid=${loginid}"
                  id="dpb1" class="list-group-item list-group-item-action bg-light">회원
                  정보 확인</a> <a href="#" id="dpb2"
                  class="list-group-item list-group-item-action bg-light">회원 정보
                  수정</a> <a href="#" id="dpb3"
                  class="list-group-item list-group-item-action bg-light">회원 탈퇴</a>
                  <c:if test="${user.roll eq 100}">
               <a href="${root}/user/admin" id="dpb4"
                  class="list-group-item list-group-item-action bg-light">회원 관리</a>
                  </c:if>
            </div>
         </div>
      </div>
      <!-- /#sidebar-wrapper -->

      <!-- Page Content -->
      <div id="page-content-wrapper">
         <nav
            class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
            <br>
         </nav>

         <div class="container-fluid" id="dp1">
            <br>
            <h3>회원 정보 확인</h3>
            <br>
            <form class="form-signin">
               <div class="form-label-group">
                  <label for="inputEmail">이름</label> <label id="inputEmail"
                     class="form-control">${user.name}</label>
               </div>
               <br>
               <div class="form-label-group">
                  <label for="inputPhone">전화번호</label> <label id="inputPhone"
                     class="form-control">${user.number}</label>
               </div>
               <br>
               <div class="form-label-group">
                  <label for="inputAddress">주소</label> <label id="inputAddress"
                     class="form-control">${user.address}</label>
               </div>
            </form>
         </div>
         <div class="container-fluid" id="dp2">
            <br>
            <h3>회원 정보 수정</h3>
            <br>
            <form class="form-signin" method="post"
               action="${root}/user/edit">
               <div class="form-label-group">
                  <label for="inputEmail">아이디</label> <input type="text"
                     id="inputEmail" class="form-control" value="${user.userid}"
                     required autofocus>
               </div>
               <br>
               <div class="form-label-group">
                  <label for="inputPassword">비밀번호</label> <input type="password"
                     id="inputPassword" class="form-control" value="${user.pass}"
                     required>
               </div>
               <br>
               <div class="form-label-group">
                  <label for="confirmPassword">비밀번호 확인</label> <input
                     type="password" id="confirmPassword" class="form-control"
                     value="${user.pass}" required>
               </div>               
               <br>
               <div class="form-label-group">
                  <label for="inputname">이름</label> <input type="text"
                     id="inputname" class="form-control" value="${user.name}"
                     required>
               </div>
               <br>
               <div class="form-label-group">
                  <label for="inputPhone">전화번호</label> <input type="text"
                     id="inputPhone" class="form-control" value="${user.number}"
                     required>
               </div>
               <br>
               <div class="form-label-group">
                  <label for="inputAddress">주소</label> <input type="text"
                     id="inputAddress" class="form-control" value="${user.address}"
                     required>
               </div>
               <br>
               <button class="btn btn-lg btn-primary btn-block text-uppercase"
                  type="submit"
                  style="background-color: #3CB371; width: 50%; margin-left: 25%;">수정하기</button>
            </form>
         </div>
         <div class="container-fluid" id="dp3">
            <br>
            <h3>탈퇴하시겠습니까?</h3>
            <br>
            <p>탈퇴 시 계정을 복구할 수 없습니다.</p>
            <a href="${root}/user/withdraw">회원 탈퇴</a>
         </div>
      </div>
      <!-- /#page-content-wrapper -->

   </div>
   <!-- /#wrapper -->
   <!-- Menu Toggle Script -->
   <script>
      $("#menu-toggle").click(function(e) {
         e.preventDefault();
         $("#wrapper").toggleClass("toggled");
      });
   </script>
</body>
</html>
