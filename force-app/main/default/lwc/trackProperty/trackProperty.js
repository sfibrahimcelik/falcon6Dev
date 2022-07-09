import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location ={
        city:"Phoenix",
        country: "US",
        postalCode: "85226"
    };
    handleChange(event1){
        this.location.city = event1.target.value;

        }
    
}