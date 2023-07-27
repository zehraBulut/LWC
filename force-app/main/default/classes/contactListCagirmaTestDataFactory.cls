@isTest
public class contactListCagirmaTestDataFactory {

    @isTest
   private STATIC VOID contactSayisiTest(){

    Account acc = DataFactory.createAccount ();
       acc.Phone='9876555';
       acc.Fax='dgffgg';
    insert acc;
       
   Contact cnt =DataFactory.createContact();
       cnt.LastName='test contact';    
        cnt.AccountId=acc.Id;
   insert cnt;
  
        Contact cnt2 =DataFactory.createContact();
       cnt2.LastName='test contact';    
        cnt2.AccountId=acc.Id;
   insert cnt2;
       
       
  INTEGER sonuc = ContactListCagirma.contactSayisi(acc.Id);    
       //account trıgger 1 adet contact olsutryr buyuzden beklenen 2 oldu
       system.assertEquals(2, sonuc);
    }
       
  
  
  @isTest
   private STATIC VOID contactListesiTest(){
       
       Account acc = DataFactory.createAccount ();
       insert acc;
       
       Contact cnt =DataFactory.createContact();
       cnt.AccountId=acc.Id;
       insert cnt;
         
       
       List<contact>cntList=ContactListCagirma.contactListesi(acc.Id);
       
       system.assertEquals(1,cntList.size());
   }   
}