public class musteriCalloutClientPost {
 
private static FINAL String END_POINT='https://gorest.co.in/public/v2/users';
private static FINAL string token='Bearer 5c1acc8742f1e20f99b32e11a91719f16036d1f421b9a2e7b213885682b9c196';           
  
    
    //@future(callout=true)
     public static VOID musteriURLPost(String mstrName , string mstrEmail ,string mstrGender,string mstrStatus){ 
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint(END_POINT + '?name=' + mstrName + '&email='+ mstrEmail+ '&gender=' + mstrGender + '&status=' + mstrStatus);  
   //https://gorest.co.in/public/v2/users?name=ebosum&email=ebosum@jashhd.sde&gender=female&status=active(BUNA BENZET)
       // Content-Type  ===> application/json; charset=utf-8
       request.setHeader('Content-Type', 'application/json; charset=utf-8');
       request.setHeader('Authorization', token);  
     HttpResponse response =  http.send(request);  
     system.debug(response.getBody());    
 if( response.getStatusCode() == 201   ){
      system.debug(' Kayit edilen record  ' + response.getBody());     
     }else{       
   system.debug(' hata var kardes ' + response.getStatusCode());  
         }  
    } 
    
    
    
    
    
   //@future(callout=true)
     public static VOID musteriURLPost(String mstrName , string mstrEmail){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint(END_POINT + '?name=' + mstrName + '&email='+ mstrEmail+'&gender=male&status=active');  
                        // https://gorest.co.in/public/v2/users?name=gfhcncvbnvcncvncv&email=asdassad@sd.c&gender=male&status=active
       // Content-Type  ===> application/json; charset=utf-8
       request.setHeader('Content-Type', 'application/json; charset=utf-8');
       request.setHeader('Authorization', token);  
         HttpResponse response =  http.send(request);
         if( response.getStatusCode() == 201   ){
             system.debug(' Kayit edilen record  ' + response.getBody());  
         }else{
           system.debug(' hata var kardes ' + response.getStatusCode());  
         } 
    } 
    
    
    
    
     @future(callout=true)
     public static VOID musteriBODYPost(String mstrName , string mstrEmail){ 
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint(END_POINT);               
       // Content-Type  ===> application/json; charset=utf-8
       request.setHeader('Content-Type', 'application/json; charset=utf-8');
       request.setHeader('Authorization', token);  
    /*  {"id": 3673594, "name": "resul",  "email": "rereads@sdsdf.ca", "gender": "male", "status": "active" }    */
     string jsonBody= '{"name": "' + mstrName + '",  "email": "' + mstrEmail + '", "gender": "male", "status": "active" }';
         request.setBody(jsonBody);  
         HttpResponse response =  http.send(request); 
         if( response.getStatusCode() == 201   ){
             system.debug(' BODY ile Kayit edilen record  ' + response.getBody());   
         }else{
           system.debug(' hata var kardes ' + response.getStatusCode());  
         } 
    }  
}