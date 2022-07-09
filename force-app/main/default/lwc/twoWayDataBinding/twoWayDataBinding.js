import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    fullName = "Ibrahim Celik";
    title = "Salesforce Developer";

    handleChange(event){
        this.title = event.target.value;
    }
}