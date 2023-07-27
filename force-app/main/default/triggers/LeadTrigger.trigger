trigger LeadTrigger on Lead ( before insert , before update , before delete , after insert , after update, after delete, after undelete) {
    
    SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  {
            
          /* When a new Lead is created assign ‘Education’  if Industry field is null
if Lead is updated, assign ‘Banking’ if Industry field is null */  
            
         /*     for(Lead armut : trigger.new){
                    if( armut.Industry == null   ) {  // acc.Industry == null ===>> String.isBlank(acc.Industry)
                       armut.Industry ='Education';
                        
                    } 
                }   */
   
            LeadTriggerHandler.industryNotNull(Trigger.new);
  
        }
            
        
        WHEN BEFORE_UPDATE  {
            
            
          /* When a new Lead is created assign ‘Education’  if Industry field is null
      if Lead is updated, assign ‘Banking’ if Industry field is null
          
         for(Lead armut : trigger.new){
                        if( armut.Industry == null   ) {  // acc.Industry == null ===>> String.isBlank(acc.Industry)
                           armut.Industry ='Banking';      } }    */ 
     
            
            LeadTriggerHandler.industryNotNull(Trigger.new);
 
  }
        WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT   { }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
 
    }

}