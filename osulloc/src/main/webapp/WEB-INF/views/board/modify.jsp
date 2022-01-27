<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/write.css">
    <link rel="stylesheet" href="../resources/css/header.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
   	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   	<script type="text/javascript" src="../resources/js/modify.js"></script>
 	<script type="text/javascript" src="../resources/js/uploadAjax.js"></script>
</head>
<body>
	<%@ include file="../Header&Footer/header.jsp" %>
	<div class="wrap">
		<div class="container">
			<h1 class="titleW">수정내용 입력</h1>
			<form action="/osulloc/board/modify" method="post" role="form">
				<div>
			    	<input type="submit" value="수정" class="write">
			    	<a href="/osulloc/board/noticeBoard" class="list">목록으로</a>
			    </div>
				<div>
					<div>
				        <input type="hidden" value="${detail.bno}" name="bno">
				    </div>
				    <div>
				        <input type="text" name="title" class="title" placeholder="제목을 입력해 주세요" value="${detail.title}">
				    </div>
				    <div>
				    	<textarea rows="30" cols="20" name="content"  class="content" placeholder="내용을 입력하세요">${detail.content}</textarea>
				    </div>
				    <div><!--가상의 form태그를 만들어 줌-->
				        <input type="file" name="uploadFile" class="file" multiple>
				    </div>
		       </div>
			</form>
		   	<div id="uploadResult">
		   		<ul></ul>
		   	</div>
		</div>
	</div>	
	<%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>