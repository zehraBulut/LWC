public class musteriCalloutCientMethodlar {
 
 private static FINAL String END_POINT='https://gorest.co.in/public/v2/users';
   
   private static FINAL string token='Bearer 5c1acc8742f1e20f99b32e11a91719f16036d1f421b9a2e7b213885682b9c196';
                
    
   // @future(callout=true)
     public static VOID musteriDELETE(String silinecekId ){
        
         
   string silinenRecordlar = musteriCalloutClient.silinecekRecorduGoster('silinecekId');
         
         
         
         
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        request.setMethod('DELETE');
        request.setEndpoint(END_POINT + '/' +silinecekId);  
                       //https://gorest.co.in/public/v2/users/3708372
     
         
         // Content-Type  ===> application/json; charset=utf-8
       request.setHeader('Content-Type', 'application/json; charset=utf-8');
       request.setHeader('Authorization', token);  
         
        
         
         HttpResponse response =  http.send(request);

         if(response.getStatusCode() == 204){
             
             system.debug('  RECORDUNUZ SİLİNDİİİİ   ' + silinenRecordlar );
             
                    }else{
             
           system.debug(' hata var kardes ' + response.getStatusCode());  
          
       }
    }    
}