public class DatetimeMethodsDemo {
   
    public void printOfferEndTime(){
        datetime dtNow= datetime.now();

        datetime dtOfferEnd=dtNow.addHours(51);
        system.debug('this offer will end '+dtOfferEnd);

    }
   
    public void printSubscriptionEndDate(){
        date subscriptionStartDate= date.today();
        date subscriptionEndDAte= subscriptionStartDate.addDays(1000);
        system.debug('subscription end date= '+subscriptionEndDAte);


        integer endDateYear= subscriptionEndDAte.year();
        integer endDateMonth= subscriptionEndDAte.month();

        system.debug( endDateYear);
        system.debug(endDateMonth);

    }
    
    public void calculateAgeInMonths() {
        system.debug('calculate age in months');
        date birthDate= date.newInstance(1984, 07, 25);
        date todayDate= date.today();
        
        integer ageInMonths= birthDate.monthsBetween(todayDate);
        system.debug('my age in months is '+ ageInMonths);    

        date birthDate1= date.newInstance(1984, 07, 25);
        date todayDate1= date.today();

        integer ageInDays=birthDate1.daysBetween(todayDate1);

        system.debug(ageInDays);
    }

    public integer add(integer a, integer b){
        integer sum1 = a+b;
        return sum1;

    }
}