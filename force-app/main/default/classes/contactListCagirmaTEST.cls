//contact sayısının testı:
  
    @isTest
   public class contactListCagirmaTEST {
       
  /* 1.yontem:
    
    @isTest(SeeAllData=true)   //SeeAllData=true) gercek canlı database baglanma ıznı verır
   private STATIC VOID contactSayisiTestDATABASEBAGLANTILI(){
    
     Account acc= [select Id FROM account Where name='sForce wise wise'] ;

       INTEGER sonuc = ContactListCagirma.contactSayisi(acc.Id);
   
           system.assertEquals(2, sonuc);
    } */
       
       
       
  //2.method test methodunun ıcınde  data olustur
  
   @isTest
   private STATIC VOID contactSayisiTest(){

    Account acc=new Account ();
       acc.Name='armut';
       insert acc;
       
   Contact cnt =new Contact();
   cnt.LastName='test contact';    
   cnt.AccountId=acc.Id;
       insert cnt;
  
       
     INTEGER sonuc = ContactListCagirma.contactSayisi(acc.Id);    
       //account trıgger 1 adet contact olsutryr buyuzden beklenen 2 oldu
       system.assertEquals(1, sonuc);
       
        }
       
  //contactListesının testı: 
  
  @isTest
   private STATIC VOID contactListesiTest(){
       
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
       
       
       List<contact>cntList=ContactListCagirma.contactListesi(acc.Id);
       
       system.assertEquals(2,cntList.size());
   }   
       
       
 }