public with sharing class LWCileAccountOlustur {
 
@AuraEnabled
public static string accountOlustur(String accName){
    try {

//record olustur
Account acc = new Account();
acc.Name= accName;
insert acc;


//accountun olustgnu anlamak ıstyrm
if(acc.Id != null){
    return 'Brawo';
}else{
    return 'sOry';
}



 } catch (Exception e) {
throw new AuraHandledException(e.getMessage());
}
}
    
}