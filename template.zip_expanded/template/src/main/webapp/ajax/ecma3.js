
//addEventListener : 이벤트핸들링 함수이며, 페이지 로드시 무조건 작동하는 함수 
document.querySelector("#btn").addEventListener("click",function(){
	//id 가져오기
	//frm.search.value=> name 값을 가져올 때 사용 
	// querySelector : id(#),class(.)를 위주로 오브젝트 로드할 수 있음 
	let search =document.querySelector(".mid").value;
	console.log(search);	
	new logins().search_ck(search);
});


export class logins{ //외부로 호출 할 수 잇는 class
	constructor(){
		console.log("테스트 입니다.");		
	}	
	 // setter 역할
    agree_data(a, b) {  
        this.data = a;
        this.data2 = b;
    }

    // getter 역할
    get agree_data() {  
        return this.data; 
    }
	
	
	search_ck(word){
		if(word==""){
			
			alert("검색어를 입력하세요");
		}
		else{
			location.href="http://nate.com";   //GET
		}
		
	}
	
	
	zzz(){
	   let data = new Array();
       data[0]="a1"
       data[1]="a2"
       console.log(data);
	}	
}