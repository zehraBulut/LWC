public class UltilityClass {
    
    //bu method user olusturur:
    
     public static Void userOlustur( String userNameEmail, String UserLastName, String userAlias, String userEmail    ){
        
         User brandNewUsr= new User();
        
        brandNewUsr.Username = userNameEmail;
        brandNewUsr.LastName = UserLastName;
        brandNewUsr.Alias = userAlias;
        brandNewUsr.Email = userEmail;
        
        
        Profile prof= [SELECT id FROM Profile WHERE NAME='AAA  Standard User' LIMIT 1];
        
        brandNewUsr.ProfileId = prof.id; // '00eHo000000N3v0IAC'
        brandNewUsr.LocaleSidKey = 'en_US';
        brandNewUsr.LanguageLocaleKey = 'en_US';
        brandNewUsr.EmailEncodingKey = 'UTF-8';
        brandNewUsr.TimeZoneSidKey = 'America/Los_Angeles'; // Australia/Melbourne 
       
        try{ 
            insert brandNewUsr;  
        }
        catch(Exception e){
            system.debug('exception ' + e);
        }
        
        
    }
    
    
    //bu method da account record  olusturur:
    
        public static VOID accountRecordOlustur(String accAdi){
            
          Account acc= new Account ();
            acc.name = accAdi ;
            try{ 
            insert acc;  
    }
        catch(Exception e){
            system.debug('hata ' + e.getMessage());
        }

      }
  }