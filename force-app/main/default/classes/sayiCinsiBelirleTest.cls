@isTest
      public class sayiCinsiBelirleTest {
       @isTest
      private STATIC  VOID sayiCinsiTest() {     //TEST METHODLAR PUBLİC OLMAZ
      
 //SayıCınsının methodunun pozıtıf sayı verılerek test edılmesı verılen sayı 10 beklenen sonuc ELMA
  string sonuc = sayiCinsiBelirle.sayiCinsi(10);   
        
        //methodum ıcınn  pozitive test yapmıs olduk(bekledgın )
        system.assertEquals('ELMA', sonuc);
        system.assertEquals('ELMA', sonuc, 'kardes bak methodu yanlıs yazmısssın');
        
        //methodum ıcınn  negatif test yapmıs olduk
        system.assertNotEquals('ARMUT', sonuc);
        system.assertNotEquals('ARMUT', sonuc,'hata var kardesım');
        
  //SayıCınsının methodunun NEGATIF sayı verılerek test edılmesı verılen sayı -5 beklenen sonuc 'ARMUT'
   string sonucIKI = sayiCinsiBelirle.sayiCinsi(-5);   
        
        //methodum ıcınn  pozitive test yapmıs olduk(BEKLEDIGIN)
         system.assertEquals('ARMUT', sonucIKI);
        
         //methodum ıcınn  negatif test yapmıs olduk(BEKLEMEDIGIN)
        system.assertNotEquals('ELMA', sonucIKI);
   
    } 
          //2.METHOOD OLUSTUR:(0)ICIN
     @isTest
      private STATIC  VOID sayiCinsiSIRIRTest() {   
          string sonuc = sayiCinsiBelirle.sayiCinsi(0);  
          
          //METHODUN pozıtıf test ıcın verılen sayı 0 beklenen üzüm(BEKLENEN)
          system.assertEquals('ÜZÜM', sonuc);
          //METHODUN negatif  test ıcın verılen sayı 0 beklenen üzüm(BEKLENMEYEN)
          system.assertNotEquals('ELMA', sonuc);
          system.assertNotEquals('ARMUT', sonuc);
      
         }
      }