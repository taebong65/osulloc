<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header">
   <div class="headerIn">
       <div class="logo">
       		<a href="/osulloc/page/mainpage">로고1</a>
       </div><!--.logo-->
       <div class="gnb">
           <ul>
               <li><a href="#">오설록</a></li>
               <li><a href="#">차</a></li>
               <li><a href="#">차용품</a></li>
               <li><a href="#">다과</a></li>
               <li><a href="#">테마샵</a></li>
               <li><a href="/osulloc/page/subpage">매거진</a></li>
           </ul>
       </div><!--.gnb-->

       <div class="member" method="POST">
       		<div class="welcome">
               <c:if test="${login != null }">
					<p>${login.id}님 환영 합니다.</p>
					<input id="logout" type="button" onclick="location.href='/member/logout'" value="로그아웃"></input></c:if>
			</div>
           <ul>
               <c:if test="${login == null}"><li><a href="/member/login">로그인</a></li></c:if>
               <li><a href="#">장바구니</a></li>
               <li><a href="#">언어</a></li>
           </ul>
       </div><!--.member-->

       <div class="search">
           <input type="text"  >
           <a href="#">검색창</a>
       </div><!--.search-->
   </div><!--.headerIn-->
</div><!--.header-->
