@isTest
public class contactListCagirmaTEST2 {

    
    @testSetup  
    private STATIC VOID armut() {
        
    Account acc = new Account();
       acc.Name='Test Account2';
       acc.phone='98765';
       insert acc;
       
   contact cnt2 = new Contact();
       cnt2.LastName='Test Contanct 2'; 
       cnt2.AccountId=acc.Id;
       insert cnt2;
       
    contact cnt3 = new Contact();
       cnt3.LastName='Test Contanct 3'; 
       cnt3.AccountId=acc.Id;
       insert cnt3;
       
    } 
 

    
    @isTest
    static VOID contactSayisiTest(){
        
   Account acc= [select Id FROM account Where name = 'Test Account2'] ;   
       
   INTEGER sonuc = ContactListCagirma.contactSayisi(acc.Id);          
       
      system.assertEquals(2, sonuc); 
    } 
              
 
      
       
  
  
  @isTest
   private STATIC VOID contactListesiTest(){
       
   Account acc= [select Id FROM account Where name = 'Test Account2'] ; 
       
       
   List<contact>cntList=ContactListCagirma.contactListesi(acc.Id); 
      
       system.assertEquals(2,cntList.size());
   
   }

}