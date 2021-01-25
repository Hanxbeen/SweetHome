<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>실거래가 정보</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap"
		rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="/happyhouse/css/animate.css">

	<link rel="stylesheet" href="/happyhouse/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/happyhouse/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="/happyhouse/css/magnific-popup.css">

	<link rel="stylesheet" href="/happyhouse/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="/happyhouse/css/jquery.timepicker.css">

	<link rel="stylesheet" href="/happyhouse/css/flaticon.css">
	<link rel="stylesheet" href="/happyhouse/css/style.css">

</head>

<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>

	<section class="hero-wrap hero-wrap-2" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span>
						<span>아파트 실거래가 검색 페이지 <i class="fa fa-chevron-right"></i></span>
					</p>
					<h1 class="mb-0 bread">아파트 실거래가 검색 페이지</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="row">
						<div class="form-group md">
							<select id="sido" class="form-control">
								<option value="0">시도</option>
							</select>
						</div>
						<div class="form-group md-1">
							<select id="gugun" class="form-control">
								<option value="0">구군</option>
							</select>
						</div>
						<div class="form-group md-1">
							<select id="dong" class="form-control">
								<option value="0">읍면동</option>
							</select>
						</div>
						<div>
							<input type="radio" name="AptorVilla" id="AptorVilla" value="apt" checked>
							<label for="아파트">아파트 </label>
						</div>
						<div>
							<input type="radio" name="AptorVilla" id="AptorVilla" value="villa">
							<label for="빌라">빌라 </label>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-4">

									<h3>거래 정보</h3>
								</div>

								<div class="col-sm-3">
									<div class="form-group md">
										<select class="form-control" name="city" id="city">
											<option value="all">전체</option>
											<option value="apt">건물명</option>
											<option value="city">지역명</option>
										</select>
									</div>
								</div>
								<div class="col-sm-5">
									<div class="form-group d-flex">
										<input type="text" class="form-control pl-3" id="aptname" placeholder="Search">
										<button id="searchBtn" class="form-control search">
											<span class="fa fa-search"></span>
										</button>
									</div>
								</div>
							</div>
							<hr class="my-3" />
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th>번호</th>
										<th>법정동</th>
										<th>번지</th>
										<th>이름</th>
										<th>층</th>
										<th>면적</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody id="searchResult">

								</tbody>
							</table>

						</div>

					</div>

				</div>
			</div>
		</div>
		<div class="col-md-12"></div>
		</div>
	</section>


	<footer class="footer ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-6 col-lg">
					<div class="ftco-footer-widget mb-4">
						<h2 class="logo">
							<a href="#">FIND US<span>.</span></a>
						</h2>
						<hr>

						<div class="col-md-6 col-lg">
							<div class="ftco-footer-widget mb-4">
								<h2 class="ftco-heading-2">Contact information</h2>
								<div class="block-23 mb-3">
									<ul>
										<li><span class="icon fa fa-map-marker"></span><span class="text">SSAFY, Jang
												Duk Dong, Kwang Joo, KOREA</span></li>
										<li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+82 10
													XXXX XXXX</span></a></li>
										<li><a href="#"><span class="icon fa fa-paper-plane"></span><span
													class="text">ssafy@ssafy.com</span></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 text-center">

								<p>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright &copy;
									<script>
										document
											.write(new Date().getFullYear());
									</script>
									All rights reserved | <i class="fa fa-heart" aria-hidden="true"></i>
									by <a href="https://colorlib.com" target="_blank">SSAFY</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</footer>


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
				stroke="#F96D00" /></svg>
	</div>


	<script src="/happyhouse/js/jquery.min.js"></script>
	<script src="/happyhouse/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/happyhouse/js/popper.min.js"></script>
	<script src="/happyhouse/js/bootstrap.min.js"></script>
	<script src="/happyhouse/js/jquery.easing.1.3.js"></script>
	<script src="/happyhouse/js/jquery.waypoints.min.js"></script>
	<script src="/happyhouse/js/jquery.stellar.min.js"></script>
	<script src="/happyhouse/js/jquery.animateNumber.min.js"></script>
	<script src="/happyhouse/js/bootstrap-datepicker.js"></script>
	<script src="/happyhouse/js/jquery.timepicker.min.js"></script>
	<script src="/happyhouse/js/owl.carousel.min.js"></script>
	<script src="/happyhouse/js/jquery.magnific-popup.min.js"></script>
	<script src="/happyhouse/js/scrollax.min.js"></script>
	<script src="/happyhouse/js/main.js"></script>
	<script>
		function errorFunc() {
			console.log($("#aptname").val());
			alert("잠시 후 다시 시도해주세요.");
		}

		$(document).ready(function () {
			/*
			$.get("${pageContext.request.contextPath}/map"
				, { act: "sido", AptorVilla: $('input[name="AptorVilla"]:checked').val() }
				, function (data, status) {
					$.each(data, function (index, vo) {
						$("#sido").append("<option value='" + vo.sido_code + "'>" + vo.sido_name + "</option>");
					});//each
				}//function
				, "json"
			);//get
			$("#sido").change(function () {
				$.get("${pageContext.request.contextPath}/map"
					, { act: "gugun", sido: $("#sido").val(), AptorVilla: $('input[name="AptorVilla"]:checked').val() }
					, function (data, status) {
						$("#gugun").empty();
						$("#gugun").append('<option value="0">선택</option>');
						$.each(data, function (index, vo) {
							$("#gugun").append("<option value='" + vo.gugun_name + "'>" + vo.gugun_name + "</option>");
						});//each
					}//function
					, "json"
				);//get
			});//change
			$("#gugun").change(function () {
				$.get("${pageContext.request.contextPath}/map"
					, { act: "dong", gugun: $("#gugun").val(), AptorVilla: $('input[name="AptorVilla"]:checked').val() }
					, function (data, status) {
						$("#dong").empty();
						$("#dong").append('<option value="0">선택</option>');
						$.each(data, function (index, vo) {
							$("#dong").append("<option value='" + vo.dong + "'>" + vo.dong + "</option>");
						});//each
					}//function
					, "json"
				);//get
			});//change
			$("#dong").change(function () {
				$.get("${pageContext.request.contextPath}/map"
					, { act: "apt", dong: $("#dong").val(), AptorVilla: $('input[name="AptorVilla"]:checked').val() }
					, function (data, status) {
						$("#searchResult").empty();
						$.each(data, function (index, vo) {
							let str = "<tr class=" + colorArr[index % 3] + ">"
								+ "<td>" + vo.villaid + "</td>"
								+ "<td>" + vo.dong + "</td>"
								+ "<td>" + vo.bunzi + "</td>"
								+ "<td>" + vo.name + "</td>"
								+ "<td>" + vo.floor + "</td>"
								+ "<td>" + vo.area + "</td>"
								+ "<td>" + vo.amount + "</td>"
							"</tr>";
							$("tbody").append(str);
						});//each
					}//function
					, "json"
				);//get
			});//change
			*/
			$("#searchBtn").click(function () {
				if ($("#city").val() == "all") {
					$.ajax({
						url: "${root}/house/all",
						method: "get",
						success: function (data, status) {
							console.log(status);
							$("#searchResult").empty();
							$.each(data, function (index, vo) {
								let str = "<tr>"
									+ "<td>" + vo.villaid + "</td>"
									+ "<td>" + vo.dong + "</td>"
									+ "<td>" + vo.bunzi + "</td>"
									+ "<td>" + vo.name + "</td>"
									+ "<td>" + vo.floor + "</td>"
									+ "<td>" + vo.area + "</td>"
									+ "<td>" + vo.amount + "</td>"
								"</tr>";
								$("tbody").append(str);
							});//each
						},//function
						error: errorFunc
					})//get
				}//change
				else if ($("#city").val() == "apt") {
					$.ajax({
						url: "${root}/house/apt/" + $("#aptname").val(),
						method: "get",
						success: function (data, status) {
							$("#searchResult").empty();
							$.each(data, function (index, vo) {
								let str = "<tr>"
									+ "<td>" + vo.villaid + "</td>"
									+ "<td>" + vo.dong + "</td>"
									+ "<td>" + vo.bunzi + "</td>"
									+ "<td>" + vo.name + "</td>"
									+ "<td>" + vo.floor + "</td>"
									+ "<td>" + vo.area + "</td>"
									+ "<td>" + vo.amount + "</td>"
								"</tr>";
								$("tbody").append(str);
							});//each
						},//function
						error: errorFunc
					})//get
				}//change
				else if ($("#city").val() == "city") {
					$.ajax({
						url: "${root}/house/city/" + $("#aptname").val(),
						method: "get",
						success: function (data, status) {
							$("#searchResult").empty();
							$.each(data, function (index, vo) {
								let str = "<tr>"
									+ "<td>" + vo.villaid + "</td>"
									+ "<td>" + vo.dong + "</td>"
									+ "<td>" + vo.bunzi + "</td>"
									+ "<td>" + vo.name + "</td>"
									+ "<td>" + vo.floor + "</td>"
									+ "<td>" + vo.area + "</td>"
									+ "<td>" + vo.amount + "</td>"
								"</tr>";
								$("tbody").append(str);
							});//each
						},//function
						error: errorFunc
					})//get
				}//change
			})
		})
	</script>
</body>

</html>