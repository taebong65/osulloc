<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../resources/css/detail.css">
    <link rel="stylesheet" href="../resources/css/header.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../resources/js/detail.js"></script>
    <title>Document</title>
</head>
<body>
<%@ include file="../Header&Footer/header.jsp" %>
    <div class="wrap">
        <div class="bc_header">
            <h1>고객센터</h1>
            <ul>
                <li class = "line">
                    <a href="">오설록 뉴스</a>
                </li>
                <li>
                    <a href="">Event</a>
                </li>
                <li>
                    <a href="">Q&A</a>
                </li>
                <li>
                    <a href="">Membership&Point</a>
                </li>
            </ul>
        </div><!--본문_헤더-->
        <div class="board_container">
            <div class="bc_container">
            	<div id="bno">${detail.bno}</div>
                <div class="bcc_header1">
                    <h2>${detail.title}</h2>
                    <p id="bcc_date">${detail.regdate}</p>
                </div><!--본문_본문_제목-->
                <div class="bcc_header2">
                    <a href="#">
                        <p class="nickname">${detail.writer}</p>
                    </a>
                    <p class="watch">조회수 
                        <span id="watch">${detail.cnt}</span>
                    </p>
                </div><!--본문_본문_제목-->
                <div class="bbc_container">
                    <p>${detail.content}</p>
                </div><!--본문_본문_본문-->
                	<div id="uploadResult">
				   		<ul></ul>
				   	</div>
                <div class="replyList">
                	<button id="addReplyBtn">
		               	댓글 쓰기
		            </button>
	                <div class="replyopen">
	                	<div>
			            	<ul id="relist"></ul>
			            </div>
			            <div class="rewrite">
	                       <!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
	                       <h4>댓글</h4>
	                       <input type="hidden" name="rno" class="">
	                       <div>
		                  		<label>Replyer</label>
		                       	<input type="text" name="replyer" class="">
	                       </div>
	                       <div>
	                       		<textarea rows="" cols="" name="reply" class="reply"></textarea>
	                       </div>
	                       <div class="replyFooter modal-footer">
			                   	<button type="button" class="" id="replyRegisterBtn">댓글쓰기</button>
			                   	<button type="button" class="" id="replyModBtn">댓글수정</button>
			                   	<button type="button" class="" id="replyRemoveBtn">댓글삭제</button>
		                      	<button type="button" class="" id="close">Close</button>
		                   </div>
	                   </div>	                   
				    </div>
                </div>
                <div class="board_btn">
                    <a href="/osulloc/board/noticeBoard" class="b_btn">목록</a>
                    <a href="/osulloc/board/write" class="b_write">글쓰기</a>
					<a href="/osulloc/board/modify?bno=${detail.bno}">수정</a>
			    	<a href="/osulloc/board/remove?bno=${detail.bno}">삭제</a>
                </div><!--본문_본문_푸터-->
            </div><!--본문_본문-->
            <div class="bc_footer">
                <ul>
                    <li>
                        <a href="#">
                            <p class="footer_title1">이전글</p>
                            <p class="footer_title">이전글 제목</p>
                            <p class="footer_title2">날짜</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <p class="footer_title1">다음글</p>
                            <p class="footer_title">다음글 제목</p>
                            <p class="footer_title2">날짜</p>
                        </a>
                    </li>
                </ul>
            </div><!--본문_푸터-->
        </div><!--본문-->
    </div>
<%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>