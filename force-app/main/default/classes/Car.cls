public  class Car {

    public String carColor = '';
    public string carName= '';

    private integer maxSpeedKMperHour= 150;
    

    public void switchOn(){
        system.debug('starting the car ');
    }

    public void drive(){
        system.debug('driving '+carName);

    }

    public void driveAtMaxSpeed(){
        string drivingDescription= 'driving '+carName+ ' at '+maxSpeedKMperHour+ ' km ';
        system.debug( drivingDescription);
        
    }

}