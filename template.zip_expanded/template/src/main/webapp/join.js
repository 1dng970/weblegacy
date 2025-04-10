export class member_ck{

   //아이디체크
   ajax_idcheck(){
      let id = frm.MID.value.replaceAll("","");//공백을 없애겠다는 의미 
      if(id==""){
       alert("아이디를 입력하셔야만 합니다.");             
      }else{
        fatch("./login_idck.do",{
        method : "POST",
        headers :{"content-type":"application/x-www-form-urlencoded"},
        body :"id=" + frm.MID.value                     
      }).then (function(aa){
        return aa.text();
      }).then (function(bb){
        console.log(bb);
      }).then (function(error){
        console.log(error);
      });
      
      }
   //회원가입
   join_okpage(){
   
   }

}