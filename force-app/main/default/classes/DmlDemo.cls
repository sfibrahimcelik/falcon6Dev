public  class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account acc = new account();
        acc.Name ='SoftInnovas';
        acc.Site= 'www.softinnovas.com';
        acc.Description= 'SalesForce boot camp';
        insert acc;
        
        System.debug(acc);
    }
    public static void dmlInsertDemo_cstmObj() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_Name__c = 'Teach DML Falcons';
        sp.Description__c= 'All 50% are great learners';
        insert sp;
        System.debug(sp);
        
    }
    public static void dmlUpdateDemo_1() {
        Account acc = new Account();
        acc.Name ='S';
        insert acc;
        System.debug('inserted '+acc);
        acc.Name='Salesforce Inc';
        update acc;
        System.debug('updated '+acc);
    }
    public static void dmlUpdateDemo_3() {
        account acc=[ select id, name from account where name= 'SoftInnovas' order by CreatedDate desc limit 1];
        acc.name = 'SoftInnovas Inc';
        update acc;
        System.debug('update acc'+acc);
    }
    public static void dmlUpdateDemo_2() {

        Account acc =[ Select name from account where name= 'SoftInnovas Inc' limit 1];
        System.debug('acc id is '+acc.Id);

        contact cnt = new contact();
        cnt.LastName= 'Biden';
        cnt.AccountId= acc.id;
        insert cnt;
        
    }
    public static void dmlMultipleRecordInsert_right() {
        List<Account> listAcc= new list<Account>();
        account acc1= new Account();
        acc1.Name= 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name='bulk acc 2';
        listAcc.add(acc2);

        account acc3= new account();
        acc3.name='bulk acc 3';
        listAcc.add(acc3);
        insert listAcc;
    }
    public static void dmlMultipleRecordInsert_2() {
        List<Account> listAccount= new List<Account>();
        account acc = new account();
        acc.name= 'SoftInnovas May-9-22 v';
        acc.AccountNumber ='ACSI-1';
        acc.Active__c='Yes';
        System.debug('before saving acc '+ acc);
        listAccount.add(acc);

        for (Integer i = 0; i < 4; i++) {
            account acc2 = new account();
            acc2.name='SoftInnovars May-9-22 v'+i;
            acc2.AccountNumber='ACSI-1';
            acc2.Active__c= 'Yes';
            listAccount.add(acc2);
        }
        System.debug('size of list '+listAccount.size());
        if(!listAccount.isEmpty()){
            insert listAccount;

        }
        
    }
 
}