import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name; //undefined
    fullName = " Salesforce Developer";//string
    age = 30;
    location ={
        city: "Houston",
        country: "US",
        postalCode:"50033"
    };
    fruits = ["Banana", "Orange", " Pomegranate", 
'Pineapple'];//array
}