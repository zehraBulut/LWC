public class musteriCalloutClient {

   Private static FINAL string END_POINT ='https://gorest.co.in/public/v2/users';
    
 //@future(callout=true)
 public static void musteriListesiAll(){        
       Http http= new Http();   
       HttpRequest request = new HttpRequest();
       request.setMethod('GET');                
       request.setEndpoint('https://gorest.co.in/public/v2/users');     
       HttpResponse response = http.send(request);   
        system.debug('response.getHeader(Content-Type) -->' +response.getHeader('Content-Type'));  //application/json; charset=utf-8
        system.debug('response.getBody() -->' + response.getBody());   //getBody ıle  ıcınde json objectler olan JSON Array dondu
        system.debug(' response.getHeaderKeys() -->' +  response.getHeaderKeys()); //poostmandakı headers ları donmus 
        system.debug(' response.getStatus(); -->' + response.getStatus()); // OK donmus
        system.debug('response.getStatusCode() -->' + response.getStatusCode()); //200 donmus
     //wındowstN CAGRMA:musteriCalloutClient.musteriListesiAll('ıd numarası gır');   
        
    }
   
    
    
    
    
   public static void musteriListesiAllveKaydet(){  
       
         Http http= new Http();     
         HttpRequest request = new HttpRequest();
         request.setMethod('GET');                
         request.setEndpoint(END_POINT);  
       
          HttpResponse response = http.send(request);  
 //goRestten gelen lısteyı  responce.getBody(); ıcındır
  string musteriJson=response.getBody();        
//body ıcınde JSON olarak gelen  lısteyı DESERIALIZE (sobjecte cevyrz) edıyoruz 
  List<musteriContainer> accFromJson= (List<musteriContainer>)JSON.deserialize(musteriJson, List<musteriContainer>.class); //sobjecte cevrdım
     List<musteri__c> musteriListesi = new List <musteri__c> ();
       for(musteriContainer mst : accFromJson ){
         musteri__c sonMusteri = new musteri__c();
           sonMusteri.Name=mst.name;
           sonMusteri.email__c=mst.email;
           sonMusteri.status__c=mst.status;
           sonMusteri.gender__c=mst.gender;
        musteriListesi.add(sonMusteri);
       }
     insert musteriListesi;    
         //system.debug('accFromJson' + accFromJson);
            //insert accFromJson;  
       //code u calıstrmak ıcın a.wındowsa bu code u yaz: musteriCalloutClient.musteriListesiAllveKaydet();       
    }  
    
    
    
    
     public static void tekMusteriListesiAllveKaydet(STRING musteriId){        
         Http http= new Http();     
         HttpRequest request = new HttpRequest();
         request.setMethod('GET');                
         request.setEndpoint('https://gorest.co.in/public/v2/users?id=' +musteriId );         
         HttpResponse response = http.send(request);
 //goRestten gelen  musterı lıstesı responce.getBody(); ıcındır
  string musteriJson=response.getBody();        
//body ıcınde JSON olarak gelen  lısteyı DESERIALIZE (sobjecte cevyrz) edıyoruz 
  List<musteriContainer> accFromJson= (List<musteriContainer>)JSON.deserialize(musteriJson, List<musteriContainer>.class); //sobjecte cevrdım
     List<musteri__c> musteriListesi = new List <musteri__c> ();
       for(musteriContainer mst : accFromJson ){
         musteri__c sonMusteri = new musteri__c();
           sonMusteri.Name=mst.name;
           sonMusteri.email__c=mst.email;
           sonMusteri.status__c=mst.status;
           sonMusteri.gender__c=mst.gender;
        musteriListesi.add(sonMusteri);
       }
     insert musteriListesi;             
   system.debug('hayit edilen musterı sayısı ' + musteriListesi.size()) ;     
    }  

   
    
    
    
       public static void filtreileAllveKaydet(STRING musteriName,STRING musteriGender){        
         Http http= new Http();     
         HttpRequest request = new HttpRequest();
         request.setMethod('GET');                
         request.setEndpoint('https://gorest.co.in/public/v2/users?name=' + musteriName + '&gender=' +musteriGender );    
                             //https://gorest.co.in/public/v2/users?name=Trilochan&gender=female
         HttpResponse response = http.send(request);
 //goRestten gelen  musterı lıstesı responce.getBody(); ıcındır
  string musteriJson=response.getBody();        
//body ıcınde JSON olarak gelen  lısteyı DESERIALIZE (sobjecte cevyrz) edıyoruz 
  List<musteriContainer> accFromJson= (List<musteriContainer>)JSON.deserialize(musteriJson, List<musteriContainer>.class); //sobjecte cevrdım
     List<musteri__c> musteriListesi = new List <musteri__c> ();
       for(musteriContainer mst : accFromJson ){
         musteri__c sonMusteri = new musteri__c();
           sonMusteri.Name=mst.name;
           sonMusteri.email__c=mst.email;
           sonMusteri.status__c=mst.status;
           sonMusteri.gender__c=mst.gender;
        musteriListesi.add(sonMusteri);
       }
     insert musteriListesi;            
   system.debug('kayıt edilen musterı sayısı ' + musteriListesi.size()) ;     
    }  
    
    
    
    
    //(BURDA ENDPOINTI VARIABLE A ASSIGN ETTIK ve sastucode ıle ıf else yaptık)
 public static VOID endPointIleIdGonder(STRING id){
   Http http = new Http();
    // Private static FINAL string END_POINT ='https://gorest.co.in/public/v2/users';
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint(END_POINT + '/' + id);            
        HttpResponse response =  http.send(request);
    if(response.getStatusCode()==200  ){
          string musteriJson = response.getBody();
               //  bubody icerisinde JSON olarak gelen listeyi SObjcet DESERIALIZE ediyoruz
         musteriContainer mctFromJson =  (musteriContainer)JSON.deserialize(musteriJson, musteriContainer.class);
                         musteri__c sonMusteri = new musteri__c();
                         sonMusteri.Name = mctFromJson.name;
                         sonMusteri.email__c= mctFromJson.email;
                         sonMusteri.status__c= mctFromJson.status;
                         sonMusteri.gender__c = mctFromJson.gender;
              insert sonMusteri;
                system.debug(' kayit edilen musteri sayisi ' + sonMusteri);
    }else {
        system.debug(' problem var  ' + response.getStatusCode());
      }
   }
    
    
    
    
    
 public static string silinecekRecorduGoster(STRING id){
       Http http = new Http();
    // Private static FINAL string END_POINT ='https://gorest.co.in/public/v2/users';
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint(END_POINT + '/' + id);              
        HttpResponse response =  http.send(request);
    if(response.getStatusCode()==200  ){
       string musteriJson = response.getBody();
        return musteriJson;
    }else {
       system.debug('there is a problem ' +response.getStatusCode() ) ;
        return 'uzgunum 1 hata oldu';
      }
   }  
}