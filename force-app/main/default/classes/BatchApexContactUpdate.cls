public class BatchApexContactUpdate implements Database.Batchable<sObject>,Database.stateful {
 Integer sira = 0;
 public Database.QueryLocator start (Database.BatchableContext BC) {

     String query ='SELECT Id,BillingCountry,( SELECT Id,MailingCountry FROM Contacts)FROM Account' ;
        return Database.getQueryLocator(query);
  }      
    public void execute(Database.BatchableContext BC, List<Account> accList) { 

      List<Contact> cntList = new List<Contact>();
        for(account acc : accList) {
            for(contact cnt: acc.Contacts){
              sira = sira +1;
              cnt.MailingCountry  = acc.BillingCountry;  
                cnt.guncelleme_sirasi__c = sira;
                cntList.add(cnt);
  }              
    }    
        try { 
            update cntList;
            
             } catch(Exception e) {
              System.debug(e);
        }
    }
    public void finish(Database.BatchableContext BC) {
    }
}