public with sharing class TurkishLesson1 {
    public void genelIslemler(){
        system.debug('derse hosgeldiniz...');
        string str = 'Salesforce ogreniyorum';
        system.debug(str);

        integer Nmbr = 10;
        system.debug(Nmbr);
        Nmbr=15;
        system.debug(Nmbr);
        integer a= 45;
        integer b=5;
        integer c= a+b;
        integer d= a/b;
        system.debug('a sayisi= '+a+' bsayisi ='+b);
        system.debug(' c sayisi= '+ c+ ' d sayisi= '+d);
    }
    public void stringMetotlar(){
        string s= 'hello ali';
        string s2= s.capitalize();
        system.debug(s2);

        string myString1= 'abcde';
        string myString2= 'abcd';
        Boolean result= myString1.contains(myString2);
        system.debug('myString1 icinde myString2 var mi? '+result);

        string str= 'Bugun hava cok guzel ama esas olan sizin havaniz';
        integer karaktersy = str.length();
        system.debug('str\'nin karakter sayisi '+karaktersy);
        string str2=str.deleteWhiteSpace();
        integer karaktersy2= str.length();
        system.debug('str\'nin karakter sayisi '+ karaktersy2);
    }
}
