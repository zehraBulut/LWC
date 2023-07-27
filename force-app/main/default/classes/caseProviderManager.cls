@RestResource(urlMapping='/Cases/*')
 global class caseProviderManager {
 
//PAROLA(TOKEN):!AQsAQGmTYv6nZFW7YMSwF9Ovhv2D.HCO8B8lZGw9MEACPJaM28YaBEPpE0xFfxkr.A3OrwFApfjuq5EgnH5l3EExNs1WfEQv
//MY ORG  a.w.tan gelen  MY URL = https://triggerproject-dev-ed.develop.my.salesforce.com

     
 @HttpGet
    global static List<case>  caseGetProvider(){
      List<case> caseList =[SELECT  Type, Status, Reason, Origin, Subject, Priority FROM Case Limit 5];
        return caseList;    
    }
     
     
 @HttpPost
  global static case doPost(String Subject, String Origin) {
 //postman data gonderırken case obj dekı fıeld adı ıle AYNI gonderırse map yapılırken problemle karsılasmaz
 //degılse CONTAINER methodu ıle haledılır
    Case yeniCase = new Case();
      yeniCase.Subject = Subject;
      yeniCase.Status = 'New';
      yeniCase.Priority = 'Low';
      yeniCase.Origin = Origin; 
     insert yeniCase; 
      return yeniCase;   
    }  
     
     
     
     
  @HttpDelete   
  global static String doDelete(){
      RestRequest request = RestContext.request;  
           // https://triggerproject-dev-ed.develop.my.salesforce.com/services/apexrest/Cases?Content-Type=application/json; charset=utf-8
          //silinecekCaseId  postamden gelen URL dekı sılınecek caseId yı almak ıcın yazılan code
      String silinecekCaseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
      Case silinecekCase =[SELECT id FROM case WHERE id =: silinecekCaseId];
      delete silinecekCase;
      return 'RECORDUN SİLİNDİİİ';
  }  
     
   
  @HttpPUt
  global static case doPut(String Subject, String Origin,String Id) {

    Case yeniCase = new Case();
      yeniCase.Id=Id;
      yeniCase.Subject = Subject;
      yeniCase.Status = 'New';
      yeniCase.Priority = 'Low';
      yeniCase.Origin = Origin; 
   upsert yeniCase; 
     
   /*  POSTMAN den gonderılecek JSON
         {
          "Id": "5008d00000VH4tUAAT"
      "Origin": "Phone",
     "Subject": "SUBJECTIM DEGISTIIII",
            }   */
   return yeniCase;  
 } 
   
     
      
  @HttpPatch
 global Static Case doPatch(){  
  RestRequest request = RestContext.request;
  String updateCaseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
  Case updateEdilecekCase = [SELECT id FROM Case WHERE id=: updateCaseId];    
 Map<string,Object> gelenJson=  (Map<string,Object>)JSON.deserializeUntyped(request.requestBody.toString());        
 for( String fieldName : gelenJson.keySet()){
 updateEdilecekCase.put(fieldName, gelenJson.get(fieldName));
 }        
 update  updateEdilecekCase;
 return updateEdilecekCase;
  }
    
    
    
 
     
  
  }