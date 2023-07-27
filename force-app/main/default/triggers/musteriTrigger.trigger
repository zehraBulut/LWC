trigger musteriTrigger on musteri__c (after update) {

for(musteri__c mst : trigger.new ){
        
        musteri__c eskiHal = trigger.oldMap.get(mst.id);
        
        if( (eskiHal.goReste_Post_Et__c !=  mst.goReste_Post_Et__c ) &&  mst.goReste_Post_Et__c ){
            
            musteriCalloutClientPost.musteriBODYPost(mst.Name , mst.email__c);
        }
   
   } 
    
}