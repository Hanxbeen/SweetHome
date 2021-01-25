<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>
   <div class="container">
      <h2>회원 목록</h2>
      <table class="table">
         <thead>
            <tr>
               <th>회원 ID</th>
               <th>회원 비밀번호</th>
               <th>이름</th>
               <th>전화번호</th>
               <th>주소</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach var="user" items="${users}" varStatus="status">
               <c:if test="${(status.index % 2) eq 0}">
                  <tr class="success">
                     <%-- <td onclick="location.href='${root}/MemberController?action=select&userid=${user.userid}'">${user.userid}</td> --%>
                     <td>${user.userid}</td>
                     <td>${user.pass}</td>
                     <th>${user.name}</th>
                     <td>${user.number}</td>
                     <td>${user.address}</td>
                  </tr>
               </c:if>
               
               <c:if test="${(status.index % 2) eq 1}">
                  <tr class="info">
                     <%-- <td onclick="location.href='${root}/MemberController?action=select&userid=${member.userid}'">${member.userid}</td> --%>
                     <td>${user.userid}</td>
                     <td>${user.pass}</td>
                     <th>${user.name}</th>
                     <td>${user.number}</td>
                     <td>${user.address}</td>
                  </tr>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
</body>
</html>
