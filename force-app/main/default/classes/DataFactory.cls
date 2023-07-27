@isTest
public class DataFactory {

    
    //account olustur
   public static Account createAccount(){
       
     Account acc=new Account();
        acc.Name='Test';
        acc.BillingCountry='Türkiye';
        acc.Phone='9876654';
     return acc;
       
    }    
     //contact olustur:
   public static Contact createContact(){
       
     Contact cnt1 = new  Contact();
           cnt1.LastName='Test';
           cnt1.MobilePhone='9876654';
     return cnt1;
}
    //opportunity  olustur:
    public static Opportunity createOpp(){
    Opportunity opp=new Opportunity();
        opp.Name='Test';
        opp.stageName='Prospecting';
        opp.CloseDate=date.today()+5;
    return opp;
    }
}