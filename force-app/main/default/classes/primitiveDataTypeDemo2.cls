public class primitiveDataTypeDemo2 {
    
    
    
    public void printNewDateTime(){
        Date today=date.today();
        time newTime=time.newInstance(11, 3, 0, 0);
        dateTime dt1= dateTime.newInstance(today, newTime);
        system.debug('dt1 '+dt1);
        dateTime dt2= datetime.newInstance(2025, 1, 9);
        system.debug('dt2 is' +dt2);
        datetime dt3= datetime.newInstance(2022, 2, 15, 15, 15, 5);
        datetime currentDT= datetime.now();
        system.debug('current DT: '+ currentDT);
        Datetime dt5= DateTime.newInstanceGMT(1998, 1, 28, 18, 02, 03 );
        system.debug(dt5);

    }
    public void printNewTime(){
        Time myTime= Time.newInstance(18, 20, 2, 30);
        Time myTime2= Time.newInstance(15, 15, 2, 20 );
        system.debug('my time: '+ myTime);  
        system.debug('me time: '+ myTime2);


    }
    public void printNewDate() {
        system.debug('create new Date instance');
        date newDate= Date.newInstance(1995, 5, 15);
        system.debug('new date is: '+ newDate);
        date newDate2=Date.newInstance(2022, 02, 02);
        system.debug( 'new date is: '+ newDate2);
        date todayDate= date.today();
        system.debug('today date is '+ todayDate);

    }
}