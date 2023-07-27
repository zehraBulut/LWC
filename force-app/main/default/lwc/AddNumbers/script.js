import { LightningElement } from 'lwc';
export default class A03Component extends LightningElement {

    sayi1=0
handleNum1(event){
    this.sayi1 = event.target.value
}
sayi2=0
handleNum2(event){
    this.sayi2 = event.target.value
}
sayiToplam=0
get toplam(){
this.sayiToplam= parseInt(this.sayi1) + parseInt(this.sayi2)
return this.sayiToplam
}
    }
