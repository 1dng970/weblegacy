<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax- Jquery로 전송 (POST) - JSON.stringify(dto연결)</title>
<script src="./jquery.js"></script>
<script>
$(function(){
	
     var $userdata = "pd1=홍길동&pd2=이순신&pd4=유관순";
	
	
	//JSON.stringify 전송 : 대표키로 보낼까요?? 대표키 없이 보낼까요??
	$("#btn").click(function(){
	   $.ajax({
		   url :"./ajax7.do",
		   cache :false,
		   type : "POST",
		   dataType : "HTML",
		   contentType: "application/json",
		   data : $userdata, //JSON.stringify 미사용 
		   
		   /*
		   data :JSON.stringify({
			   pd1 :"홍길동",
			   pd3 :"이순신",
			   pd4 :"유관순"
		   }),
		   success:function($result){
			   console.log($result);
		   },
		   error:function($error){
			   console.log($error);
		   }
		   */
	   });		
	});	
});

</script>
</head>
<body>
<input type="button" value="전송" id="btn">
</body>
</html>