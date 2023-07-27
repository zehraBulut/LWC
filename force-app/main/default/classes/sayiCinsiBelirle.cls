public class sayiCinsiBelirle {

    public static string sayiCinsi(integer rakam){
        /*kulanıcıcan alınan sayı eger + ıse 'ELMA' - ıse 'ARMUT' dyelım.
        sayı negatıfse armut dyelım
         ya 0 yazarsa UZUM dyelım*/
        if(rakam >0){
            return  'ELMA';                   
        }else if(rakam<0) {
            system.debug('bakın bu satır okunmaz we test ıcınde sayılmaz');
            return  'ARMUT';
        }else{
            return 'ÜZÜM';
        }
    }
}