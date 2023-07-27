public class ContactListCagirma {
    
   public STATIC INTEGER  contactSayisi(ID accId){
     List<contact>cntList= [SELECT AccountId,Id FROM contact  WHERE AccountId =: accId] ;
       if(cntList.size()>0){
           return cntList.size();
       }else{
           return 0;
       }
    }
 public STATIC List<contact>  contactListesi(ID accId){
     List<contact>cntList= [SELECT AccountId,Id FROM contact  WHERE AccountId =: accId] ;
           return cntList;
  
       }
    }