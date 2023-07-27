public class LeadTriggerHandler {
    
    
    Public static Void industryNotNull(List<Lead> leadList){
         /*   If a new Lead is created or updated and if ‘Industry’ filed is null; Give a warning   */     
          
            for(Lead newLead : leadList){
                if(newLead.Industry == null ) {
                    //  newLead.addError('Kardes Indusr=try field bos birakilamaz   lutfen bir tane sec!!');  //  sayfada hata verir
                      newLead.Industry.addError('Kardes Industry field bos birakilamaz   lutfen bir tane sec!!'); // industry field da hata verir
                }
                
            }
        
    }
    
    
    
}