public class futureMethodCalismasi {
    
   @future
    public static   VOID  userAndAccountOlustur(String accName, String userNameEmail) {
 
 //(aynı methos ıcınde 1 user 1 acount olusturuyoruz mıxed dml olstryrz hatasz calısması ıcın basına @future koymayı unutma!!!)
 
 //burası user olusturur-(setup):
      UltilityClass.userOlustur(   userNameEmail, 'soyName', 'KSLTN' , 'dbdhbfh@gmail.com' );
       
 //burası account olusturur-(non setup):
       UltilityClass.accountRecordOlustur(accName);
 
}
  }