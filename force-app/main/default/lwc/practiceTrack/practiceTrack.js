import { LightningElement, track } from 'lwc';

export default class PracticeTrack extends LightningElement {
    @track details={
        name : "Jeff Bezos",
        title : "Executive Chairman",
        company : "Amazon"
    };
    handleChange(event2){
        this.details.company = event2.target.value;
    }
}