<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
		<title>Insert title here</title>
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
	    <link rel="stylesheet" href="../resources/css/noticeBoard.css" type="text/css">
	    <link rel="stylesheet" href="../resources/css/header.css" type="text/css">
	    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 	    <script src="resources/js/header.js"></script> -->
    	<script src="../resources/js/noticeBoard.js"></script>     
	</head>
	<body>
        <!-- 게시판 목록리스트 -->
       	<%@ include file="../Header&Footer/header.jsp" %>
        <div id="wrap">

            <div id="container">
            	<h2>공지사항</h2>
			<form id = "actionForm" action="/osulloc/board/noticeBoard" method="get">
              <div class="find">
              <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				<%-- <input type="hidden" name="amount" value="${pageMaker.cri.amount}"> --%>
				<select name="amount" class="showNum">
                    <option value="5" <c:if test="${pageMaker.cri.amount=='5'}"> selected</c:if>>5개씩</option>
                    <option value="10" <c:if test="${pageMaker.cri.amount=='10'}"> selected</c:if>>10개씩</option>
                    <option value="15" <c:if test="${pageMaker.cri.amount=='15'}"> selected</c:if>>15개씩</option>
               </select>
               <select name="search" id="selectQ">
                    <option value="T" <c:if test="${pageMaker.cri.search=='T'}"> selected </c:if>>제목</option>
					<option value="C" <c:if test="${pageMaker.cri.search=='C'}"> selected </c:if>>내용</option>
					<option value="W" <c:if test="${pageMaker.cri.search=='W'}"> selected </c:if>>작성자</option>
					<option value="TC" <c:if test="${pageMaker.cri.search=='TC'}"> selected </c:if>>제목 + 내용</option>
					<option value="TCW" <c:if test="${pageMaker.cri.search=='TCW'}"> selected </c:if>>제목 + 내용 + 작성자</option>
                </select>
                <div class="textQ">
                   <input id="keyword" type="text" name="keyword" value="${pageMaker.cri.keyword}" placeholder="검색어를 작성해주세요">
                  <button class="searchB">검색</button>
                </div>
              </div>
			</form>
                <div class="conTop">
                    <p class="totalCon">2</p>개의 글

                    <p class="blind"><input type="checkbox"></input> 공지 숨기기</p>

                    
                </div>

                <table class="contain">
                
                    <th>

                      <tr>
                        <td class="contents">
                          <p class="bno ">번호</p>
                          <p class="title">제목</p>
                          <p class="writer">작성자</p>
                          <p class="regdate">등록일</p>
                          <p class="cnt">조회수</p>
                          <p class="good">좋아요</p>
                        </td>
                      </tr>
                      
                      <c:forEach items="${list}" var="board">

	                      <tr>
	                        <td class="contents">
	                          <p class="bno">${board.bno}</p>
	                          <p class="title"><a href="/osulloc/board/detail?bno=${board.bno}">${board.title}</a></p>
	                          <p class="writer">${board.writer}</p>
	                          <p class="regdate">${board.regdate}</p>
	                          <p class="cnt">${board.cnt}</p>
	                          <p class="good">${board.good}</p>
	                        </td>
	                      </tr>
	                  </c:forEach>
                    </th>
                </table>
                
				<form id = "actionForm" action="/osulloc/board/noticeBoard" method="get">
				
					<%-- <!-- 검색 -->
	                <div class=" conBottom">
	                
	                	<!-- a태그(페이지 이동 버튼)를 클릭했을 때 화면안에 이 두개의 값(현재페이지번호, 개수)을 가지고 있어야 한다. -->
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	
	                    <div class="conB1">
	                      <select name="" id="selectdate">
	                        <option value="1">1일</option>
	                        <option value="2">2주</option>
	                        <option value="3">3개월</option>
	                      </select>
	
	                      <select name="search" id="selectQ">
	                        <option value="T" <c:if test="${pageMaker.cri.search=='T'}"> selected </c:if>>제목</option>
							<option value="C" <c:if test="${pageMaker.cri.search=='C'}"> selected </c:if>>내용</option>
							<option value="W" <c:if test="${pageMaker.cri.search=='W'}"> selected </c:if>>작성자</option>
							<option value="TC" <c:if test="${pageMaker.cri.search=='TC'}"> selected </c:if>>제목 + 내용</option>
							<option value="TCW" <c:if test="${pageMaker.cri.search=='TCW'}"> selected </c:if>>제목 + 내용 + 작성자</option>
	                      </select>
	                      
	                      <input id="keyword" type="text" name="keyword" value="${pageMaker.cri.keyword}">
	                      <button type ="submit" class="conB2">검색</button>
	                      <!-- <input type="submit" value="검색"  id="search" class="conB2"> -->
	                  </div>                  
	                </div><!-- 검색 --> --%>
					<div>
						<a href="/osulloc/board/write" class="write">글쓰기</a>
					</div>
	                 <!-- 페이지 넘기도록 한다. -->
	                <div class="page">    
	                    <ul class="pagination">
								 <!-- 조건문을 넣어주어 true일 떄 동작하도록 한다. test="조건" -->
								 <!-- 기본값이 1,10인것을 참고 (pageDTO.java, Criteria.java) -->
								<c:if test="${pageMaker.prev}">
									<li class="paginate_button page-item pageL " id="dataTable_previous">
										<a href="${pageMaker.startPage-1}" class="page-link PNum">prev</a>
									</li>
								</c:if>
								
								<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<li class="paginate_button page-item pageC">
									
										<!-- form태그 사용 안할 시 .ver (js를 작성하고 사용하면 2번 적히게 되어 오류발생) -->
										<!-- <a href="/board/list?pageNum=${num}&amount=${pageMaker.cri.amount}" class="page-link">${num}</a> -->
										<a href="${num}" class="page-link PNum">${num}</a>
									</li>
								</c:forEach>
								
								<!-- 조건문을 넣어주어 true일 떄 동작하도록 한다. test="조건" -->
								<c:if test="${pageMaker.next}">
									<li class="paginate_button page-item pageR" id="dataTable_next">
										<a href="${pageMaker.endPage+1}" class="page-link PNum">next</a>
									</li>
								</c:if>
								
							</ul>
							
	                </div><!--.page-->
                
            	</form>            
            </div><!--#containder-->
        </div><!--#wrap-->
        <%@ include file="../Header&Footer/footer.jsp" %>
    </body>

</html>