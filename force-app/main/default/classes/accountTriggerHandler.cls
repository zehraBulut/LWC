public class accountTriggerHandler {


   /* public static BOOLEAN bayrak = true;
    
    public static VOID recurtionExample(List<Account> accTriggerdanGelenList){

         if(bayrak ) {
                bayrak = false;
                List<account> accList = new List<Account>();
                for(Account acc: accTriggerdanGelenList ){
                    Account newAcc= new Account(); 
                    newAcc.Name = 'AAA new account Created '; 
                    accList.add(newAcc);
                } 
                
                database.insert(accList);
                
       }
    }  */
    
    
    
    public static integer bayrak = 0;
    
    public static VOID recurtionExample(List<Account> accTriggerdanGelenList){
        
        
         if(  bayrak <4 ) {
                bayrak = bayrak+1;
                List<account> accList = new List<Account>();
                for(Account acc: accTriggerdanGelenList ){
                    Account newAcc= new Account(); 
                    newAcc.Name = 'AAA new account Created '; 
                    accList.add(newAcc);
                } 
                
                database.insert(accList);
                
            }
    }
}