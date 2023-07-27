public class QueueableOrnek   implements schedulable {
    
    public void execute(SchedulableContext sc){
       
        List<Opportunity> oppList = [SELECT id FROM Opportunity WHERE  CloseDate < Today AND IsClosed = False ];
        
        if( oppList.size()>0   ) {
            
            List<Task> yenitask = new List<Task>();
            
            for (Opportunity opp : oppList) {
                Task tsk = new Task();
                tsk.Subject = 'Opp Close date Passed';
                //   tsk.Status = 'Not Started';
                tsk.WhatId = opp.id;
                tsk.OwnerId = opp.OwnerId;
                tsk.ActivityDate = Date.today() + 3 ; // DueDate
                yenitask.add(tsk);
            }
            
            try{
                insert yenitask;
            }
            catch(Exception e ){
                system.debug(' exception ;;>> ' + e.getMessage());
            }
        }
    }
}