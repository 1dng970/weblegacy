function ajax_gopage2(){
	var ajax,result;
	var data=[];
	data.push({"pd1":"홍길동","pd2":"강감찬","pd3":" 유관순"});
	
	// FormData => 동일한 키를 안할 경우 (문자열로 각 키별로 셋팅) -get
	// 동일한 키를 사용할 경우 (원시배열 형태로 구성 )- getAll
	/*
	var data = new FormData();
	data.append("pd1","홍길동");  //append("키명","데이터명")
	data.append("pd2","이순신");
	data.append("pd3","유관순");
	*/
	
	
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if(ajax.readyState==4){
			if(ajax.status == 200){
				console.log(this.response);
			}			
		}
	}
	ajax.open("POST","./ajax4.do",true);
    ajax.setRequestHeader("content-type","application/json");
    //console.log(data.get("pd1"));
  
    // console.log(JSON.stringify(data));    
 
	ajax.send(JSON.stringify(data));//JSON의 배열 형태 Back-end 에게 전달
}

function ajax_gopage(){
	var ajax,result;
	
	// FormData => 동일한 키를 안할 경우 (문자열로 각 키별로 셋팅) -get
	// 동일한 키를 사용할 경우 (원시배열 형태로 구성 )- getAll
	var data = new FormData();
	data.append("pd1","홍길동");
	data.append("pd2","이순신");
	data.append("pd3","유관순");
	
	//console.log(data.get("pd"));
	//console.log(data.getAll("pd"));//무조건 배열로 설정 (같은키 getAll)
	//console.log(data.keys.toString);
	
	
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if(ajax.readyState==4){
			if(ajax.status == 200){
				console.log(this.response);
			}
			
		}
	}
	/*
	setRequestHeader전송방식
	1. application.x-www-form-urlencoded : 문자로 전송(name 값으로 전송)
	2. application/json : json 배열의 값을 이용하여 전송 - FormData 전용
	3. multipart/form-data :  IO 형태의 값을 전송
	4. 가상의 키와 value을 이용해서 Header에 적용하여 전송(한글 value는 사용 불가능)
	*/	
	ajax.open("POST","./ajax3.do",true);
    ajax.setRequestHeader("content-type","application/json");
	ajax.send(data);//Formdata 함수로 생성된 객체를 전송
	
}