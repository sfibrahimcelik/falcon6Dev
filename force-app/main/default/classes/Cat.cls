public  class Cat {
    public string name;
    public string color;

    public Cat() {

        System.debug('constructor called ');
    }
    public cat(string n, string c){
        this.name=n;
        this.color=c;
        sleeping();
    }
    public void sleeping(){
        System.debug(name+ ' is sleeping');
    }
}
