<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Delete - AJAX</title>
<script src="jquery.js"></script>
</head>
<body>
<form>
<input type="hidden" name="midx" value="5,3,2">
</form>
<input type="button" value="JS삭제" onclick="ajax_del()">
<input type="button" value="ES삭제" id="ajax_del">
</body>
<!--    // body: formdata     // formdata를 요청 본문에 포함 -->

<script>
//ECMA ->Array()=>@RequestBodt
document.querySelector("#ajax_del").addEventListener("click",function(){
	this.arr =["3","6","9","10"];
	
	/*
	var formdata = new FormData();
     formdata.append("midx",5);
     formdata.append("midx",9);
     formdata.append("midx",12);
     */
     fetch("./ajax13/a123456", {
         method: "DELETE",  // DELETE 메소드 사용
         headers :{"content-type":"application/json"}    
         body: JSON.stringify(this.arr);
     })
     .then(function(aa) {
         return aa.text();  // 응답을 텍스트로 반환
     })
     .then(function(bb) {
         console.log(bb);  // 서버의 응답 데이터를 콘솔에 출력
     })
     .catch(function(error) {
         console.log(error);  // 오류 발생 시 콘솔에 출력
     });
 });




function ajax_del() {
     var formdata = new FormData();
     formdata.append("midx",5);
     formdata.append("midx",9);
     formdata.append("midx",12);
     //console.log(formdata.getAll("midx"));
     
     var http,result;
     http = new XMLHttpRequest();
     http.open("DELETE","./ajax13/a123456",false);
     http.setRequestHeader("content-type","application/json");
     http.onload =function(){    	 
    	 console.log(this.response);    	 
     };
     http.onerror=function(){    	 
    	 console.log("통신오류");    	 
     };
     http.send("midx=123123");    
}

</script>
</html>