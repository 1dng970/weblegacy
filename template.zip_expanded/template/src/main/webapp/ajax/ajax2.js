function ajax_gopage(){
	var ajax,result;
	
	var data = new Array();
	data[0]="홍길동";
	data[1]="강감찬";
	data[2]="이순신";
	
	
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if(ajax.readyState==4){
			if(ajax.status == 200){
				console.log(this.response);
			}
			
		}
	}
	ajax.open("POST","./ajax2.do",true);
    ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	ajax.send("product="+data);//해당 keyname명 + 배열 데이터 
	
}