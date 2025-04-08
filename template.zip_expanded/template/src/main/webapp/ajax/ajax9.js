export class ecma_ajax{
	
	//배열 생성 후 POST로 전송
	ajax_arr(){
		this.arr ={mid:"hong",mname:"홍길동"};
		//this.arr = ["hong","kim","park"];
		fetch("./ajax11.do",{
			method :"POST",			
			/*
			//Backend :@RequestBody +JSONArray, JSONObject
			JSON 전송 시 사용 
			headers :{"Content-Type":"application/json"},
			body:JSON.stringify(this.arr)
			*/
			
			
			//Backend :   @RequestParam 또는 @ModelAttribute 처리 가능 
			/*
			headers :{"Content-Type":"application/x-www-form-urlencoded"},
			body:"mid=hong&mname=홍길동"
			*/
			//new URLSearchParams : 키배열,원시배열을 구성하여 Ajax로 데이터를 전송시키는 방식  
			headers :{"Content-Type":"application/x-www-form-urlencoded"},
			body :new URLSearchParams({
				mid : "hong",
				mname :"홍길동",		
				mage :25		
			})
		}).then(function(aa){
			return aa.text();			
		}).then(function(bb){
			 console.log(bb);			
		}).catch(function(error){
			 console.log(error);			
	    });						
	  }		
  }