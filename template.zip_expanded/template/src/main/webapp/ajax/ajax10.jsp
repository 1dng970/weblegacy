<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 
API Key에 과련된 사항을 체크
patch: update(수정)
put: insert(입력)
delete: delete(삭제)
get(보안x), post(보안): select(검색)
 -->
<meta charset="UTF-8">
<title>Ajax(Patch) - API Server(JavaScript&Jquery)</title>
<script src="jquery.js"></script>
<script>
$(function(){
    $("#btn").click(function(){
        var $mid = $("#mid").val();
        
        // $.ajax를 올바르게 사용하도록 수정
        $.ajax({
            url: "./ajax12.do/patch_myinfo",  // 요청 URL
            cache: false,
            type: "PATCH",  // 요청 방식 (PATCH)
            dataType: "html",  // 서버 응답 타입
            contentType: "application/json",  // 전송 데이터 형식
            data: JSON.stringify({  // 전송할 데이터
                mid: $mid,  // 아이디
                mname: "홍길동",  // 이름
                mage: "35",  // 나이
                memail: "hong@nate.com"  // 이메일
            }),
            success: function(data){
                console.log(data);  // 성공 시 응답 데이터 출력
            },
            error: function(){
                console.log("통신 오류 발생!!");  // 실패 시 오류 출력
            }
        });
    });
});

</script>
</head>
<body>
아이디 : <input type="text" id="mid">
<input type="button" value="JS 클릭" onclick="ajaxs()">
<input type="button" value="JQ 클릭" id="btn">
</body>
<script>
function ajaxs(){
   
   var mid = document.getElementById("mid");
   var arr = new Array(); 
   arr[0] = mid.value;
   arr[1] = "apink@naver.com";
   arr[2] = "01010041234";
   arr[3] = "서울시 종로구"
   console.log(arr);

   var http, result;
   http = new XMLHttpRequest();
   //http.oepn("PATCH", "./ajax12.do/"+mid.value, false); //한 개의 데이터 값
//    http.setRequestHeader("content-type", "application/x-www-form-urlencoded");

   //배열 및 보안 코드를 적용하여 API로 연결하는 방식
   http.open("PATCH", "./ajax12.do/patch_myinfo", false); //보안코드(patch_inof 라는 단어)
   http.setRequestHeader("content-type", "application/json"); //JSON 전송
   http.onload = function(){
      console.log(this.response);
   };
   http.onerror = function(){
      console.log("통신 오류 발생!!");
   };
   http.send(JSON.stringify(arr)); // JSON.stringify(arr)=> 배열값을 send 함수를 이용하여 전달
}   
</script>
</html>