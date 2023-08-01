import { LightningElement, api , track} from 'lwc';
export default class A09trackDecoratorObject extends LightningElement {

   @api ad='Destina'

    handleIsim(event){
    this.ad=event.target.value
    this.fullIsim.name=event.target.value

    }

    
    @api soyad='Ozgur'

    handleSoyIsim(event){
    this.soyad=event.target.value
    this.fullIsim.lastName=event.target.value
    }

     @track
     fullIsim = {
       name: 'Makluube',
         lastName: 'Sisman'

   }



  











}