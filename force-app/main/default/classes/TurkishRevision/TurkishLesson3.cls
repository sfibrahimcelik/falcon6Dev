public  class TurkishLesson3 {
    public void welcome(){
        system.debug('Hosgeldiniz');
    
    }
    public string firstName;
    public string lastName;
    public String className= 'New Batch';
    private string courseName='Softinnovas';

    public string ehliyet(integer age){
    string msg ='';
        if (age<18){
            msg = 'Ehliyet alamaz...';
        }else{
            msg = 'Ehliyet alabilir...';
        }
        return msg;
    }
}