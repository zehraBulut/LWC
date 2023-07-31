import { LightningElement } from 'lwc';
export default class E10mathLessonPratik extends LightningElement {
  value = 'inProgress';

  get options() {
      return [
          { label: 'New', value: 'new' },
          { label: 'In Progress', value: 'inProgress' },
          { label: 'Finished', value: 'finished' },
      ];
  }

  handleChange(event) {
      this.value = event.detail.value;
  }

 }