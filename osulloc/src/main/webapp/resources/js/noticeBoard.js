$(document).ready(function(){
	let actionForm = $("#actionForm")
	// 현재페이지 번호를 클릭하면
	$(".paginate_button a").on("click",function(e){
		e.preventDefault();
		actionForm.find("input[name='pageNum']").val($(this).attr("href"))
		actionForm.submit();
		
	})
	//검색버튼을 클릭하면
	$("button[type='submit']").on("click", function(e){
		e.preventDefault();
		actionForm.find("input[name='pageNum']").val("1")
		var selectVal = $("select[name='search']").val();
		var select = $("select[name='search']");
		
		
		/*//$("#셀렉트ID option:eq(1)").attr("selected", "selected");
		if( selectVal == "T"){
			
			$("select[name='search'] option:eq(0)").attr("selected", "selected");
			
		}else if( selectVal == "C"){
			
			$("select[name='search'] option:eq(1)").attr("selected", "selected");

			
		}else if( selectVal == "W"){
			
			actionForm.find("select[name='search']").val("W");
			
		}else if( selectVal == "TC"){
			
			actionForm.find("select[name='search']").val("TC");
			
		}else{
			
			actionForm.find("select[name='search']").val("TCW");
		}*/
		actionForm.submit();
	})
	
})
