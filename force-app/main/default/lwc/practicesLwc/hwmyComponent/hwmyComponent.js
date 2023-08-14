import { LightningElement, api } from 'lwc';

export default class HwmyComponent extends LightningElement {

@api firstName = 'Destina';
@api strTitle = 'Welcome in Salesforce';
@api showImage = false;
@api imgUrl = '';
}