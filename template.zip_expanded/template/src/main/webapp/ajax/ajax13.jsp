<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax-@putMapping =>DTO로 처리</title>
<script src="./jquery.js"></script>
</head>
<body>
입력값 : <input type="text" id="pd1"><br>
입력값 : <input type="text" id="pd2"><br>
입력값 : <input type="text" id="pd3"><br>
입력값 : <input type="text" id="pd4"><br>
입력값 : <input type="text" id="pd5"><br>
입력값 : <input type="button" value="AJAX전송" onclick="ajax_put()">
</body>
<!-- JS  -->
<script>
function ajax_put() {
    // eval()=> 문자형태를 Script화 시켜주는 역할 함수
    // var pd1,pd2,pd3,pd4,pd5;
    var a = 1;
    while (a < 6) {
    	
        //eval("var pd" + a + " = " + String(document.getElementById("pd" + a).value));
           eval("var pd" + a + " = document.getElementById('pd' + a).value");
        a++;
    }
 //키배열  pd1 ~ pd5
    var keyarray= {
	   pd1 : pd1,
	   pd2 : pd2,
	   pd3 : pd3,
	   pd4 : pd4,
	   pd5 : pd5		 
    };
 
    var json =JSON.stringify(keyarray);
    console.log(json);
   
    
    var http, result;
    http = new XMLHttpRequest();
    http.open("PUT", "./ajax14/a123456", false);
    http.setRequestHeader("content-type","application/json")
    http.onload = function() {
        result = this.response;
        console.log(result);
    };
    
    http.onerror = function() {
        console.log("통신오류!!");
    };
    http.send(keyarray);
    //http.send(json);
}
</script>
<!-- ES -->1
<script type="module">

</script>
</html>