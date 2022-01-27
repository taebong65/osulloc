$(document).ready(function() {
	(function(){
		var bno = '<c:out value = "${board.bno}"/>';
		
		$.getJSON("/osulloc/board/getAttachList", {bno:bno}, function(arr){
			console.log(arr);
			var str = "";
			
			$(arr).each(function(i, attach){
				
				// image type
				if(attach.fileType){
					var fileCallPath = encodeURIComponent(attach.uploadPath + "/s_" + attach.uuid + "_" + attach.fileName);
					
					str+= "<li data-path = '" + attach.uploadPath + "' data-uuid = '" + attach.uuid + "'data-filename='"
					+ attach.fileName + "' data-type = '" + attach.fileType + "'><div>";
					str+= "<img src = '/display?fileName=" + fileCallPath + "'>";
					str+= "</div>";
					str+ "</li>";
				}else {
					str += "<li data-path = '" + attach.uploadPath + "' data-uuid = '" + attach.uuid + "'data-filename = '"
					+ attach.fileName + "'data-type = '" + attach.fileType + "'><div>";
					str += "<span>" + attach.fileName + "</span><br/>";
					str += "<img src = '/resources/img/attach.png'></a>";
					str + "</li>";
				}
			});
			
			$(".uploadResult ul").html(str);
		});
	})();
	function showUploadedFile(uploadresultArr){
		var str="";
		$(uploadresultArr).each(function(i,obj){//each : 제이쿼리 for문
			console.log(obj)
			if(!obj.image){
				var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
				str+="<li data-path='"+obj.uploadPath+"'";
				str+="data-uuid='"+obj.uuid+"'data-filename='"+obj.fileName+"'data-type='"+obj.image+"'>";
				str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='"+obj.image+"' class='btn'></button><br>";
				str+="<a href='/osulloc/download?fileName="+fileCallPath+"'>"+obj.fileName+"</a></li>"
			}else{
				var fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
				console.log(fileCallPath)
				//img태그를 사용해서 웹브라우저 이미지 출력
				str+="<li data-path='"+obj.uploadPath+"'";
				str+="data-uuid='"+obj.uuid+"'data-filename='"+obj.fileName+"'data-type='"+obj.image+"'>"; 
				str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='"+obj.image+"' class='btn'></button><br>";
				str+="<img src='/osulloc/display?fileName="+fileCallPath+"'></li>"
			}
		})
		$("#uploadResult ul").html(str)
	}
});

