<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Happy House</title>
        </head>
        <body id="page-top">
            <%@ include file="/WEB-INF/include/header.jsp" %>
            <!-- Masthead-->
            <header class="masthead">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-center text-center">
                        <div class="col-lg-10 align-self-end">
                            <h1 class="text-uppercase text-white font-weight-bold">집을 한눈에 비교하세요!</h1>
                            <hr class="divider my-4" />
                        </div>
                        <div class="col-lg-8 align-self-baseline">
                            <!-- <form>
                                <br>
                                <select name="cars" class="custom-select-sm" style="width: 15%; border-radius: 10px;">
                                    <option selected>선택하세요</option>
                                    <option value="volvo">동</option>
                                    <option value="fiat">건물</option>
                                </select>
                                <input type="text" value="" id="dong" placeholder="키워드를 입력하세요" style="border-radius: 10px;"><br><br>
                                <input class="btn btn-primary btn-xl js-scroll-trigger" type="submit" value="검색">
                            </form> -->
                            <input class="btn btn-primary btn-xl js-scroll-trigger" type="button" value="찾아보기" onclick="location.href='${root}/search/house'">
                        </div>
                    </div>
                </div>
            </header>
            <!-- About-->
            <!-- <section class="page-section bg-primary" id="about">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 text-center">
                            <h2 class="text-white mt-0">We've got what you need!</h2>
                            <hr class="divider light my-4" />
                            <p class="text-white-50 mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! Choose one of our open source, free to download, and easy to use themes! No strings attached!</p>
                            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
                        </div>
                    </div>
                </div>
            </section> -->
            <!-- Footer-->
            <footer class="bg-light py-5">
                <div class="container"><div class="small text-center text-muted">Copyright © 2020 - Start Bootstrap</div></div>
            </footer>
        </body>
    </html>
    