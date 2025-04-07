<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax - JQuery로 전송(POST) - JSON.stringify를 이용한 전송</title>
<script src="./jquery.js?v=1"></script>
<script>
   $(function(){
   
      var $data = new Array();
      $data[0] = "홍길동";
      $data[1] = "이순신";
      $data[2] = "장보고";
      
      //json.stringify 전송: 대표키로 전송 / 대표키 없이 전송
      /*contentType 없을시에 한글 깨짐 / contentType 있으면 제대로 출력됨*/
      $("#btn").click(function(){
         $.ajax({
            url: "./ajax6.do",
            cache: false,
            type: "POST",
            dataType: "html",
            contentType: "application/json", 
            //data: JSON.stringify($data), //대표키 없이 전송
            data: JSON.stringify({userdata:$data}), //대표키로 전성
            async: true,
            success: function($result){
               console.log($result);
            }, error:function(){
               console.log($error);
            }
         });
         
      });
   });
   

</script>

</head>
<body>
<input type="button" value="전송" id="btn">
</body>
</html>