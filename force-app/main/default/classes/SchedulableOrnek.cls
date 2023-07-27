public class SchedulableOrnek implements schedulable {
    public void execute(SchedulableContext sc){
       
    List<Opportunity> oppList =[select id,OwnerId from Opportunity where CloseDate<today AND IsClosed=false];      
   
    List<Task> yeniTask = new   List<Task> ();
        
        for(Opportunity opp : oppList){
            
                Task tsk =new Task();
                tsk.Subject = 'Opp Close date Passed';
                tsk.WhatId = opp.id;
                tsk.OwnerId = opp.OwnerId;
                tsk.ActivityDate = Date.today() + 3 ; // DueDate
               
                yeniTask.add(tsk);
       }
        try {
               insert yenitask;
        }  catch(Exception e){
            
            system.debug('exception  ; ' + e.getMessage());
        }
     }
    
  
 }