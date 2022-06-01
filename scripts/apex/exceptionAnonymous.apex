try {
    account a = new account();
    insert a ;
}catch(DmlException dex){
    System.debug('Dml exception wrong');
}
catch (Exception ex) {
    System.debug('wrong?');
}
System.debug('Apex is simple');

