public  class Soqldemo {
    public static void accountSoql_1() {
        List<Account> listAcc = [Select ID, name from Account Where Name LIKE'%A%'];
        System.debug('Account list '+listAcc);
        System.debug('# of accounts ='+ listAcc.size());
        Account latestAcc = [select name, website from account order by createddate desc limit 1];
        System.debug(latestAcc);
    }
    public static void accountSoql_2(){
        Account latestAcc1  = [select name, website from account order by createddate desc limit 1];
        System.debug(latestAcc1);
        string accName = latestAcc1.Name;
        string accPhone = latestAcc1.Phone;
        System.debug('Acc name is '+accName);
        System.debug('Acc phone is '+accPhone);
    }
    public static void accountsoql_3() {
        List<Account> listAcc2 = [select id, name, phone, accountNumber from account order by Createddate Desc];
        System.debug('All accounts '+listAcc2);
        for (Account eachAccount : listAcc2) {
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            System.debug('Acc name is '+accName);
            System.debug('Acc phone is '+accPhone); 
            System.debug('acc account number is '+eachAccount.AccountNumber);
            
        }
        
    }

    public static void soqldemo_Filter() {
        string accNamefilter = 'Softinnovas';
        list<account> listAcc =[select name from account where name= :accNamefilter];
        System.debug(listAcc);
        
    }




}