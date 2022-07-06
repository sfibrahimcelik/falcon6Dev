@isTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
      List<Account> accounts = new List<Account>();
      for (Integer i = 0; i < 100; i++) {
          account a = new Account(name = 'Test Account'+i, Phone= '96765656');
          accounts.add(a);
      }  
      insert accounts;
    }
    @isTest 
    static void methodName(){
        List<Account> accs =[select id, name from account];

        test.startTest();
        AccountQueueableExample aq = new AccountQueueableExample(accs);
        system.enqueueJob(aq);
        test.stopTest();

        integer count =[select count() from account where name like '%SI%'];
        system.assertEquals(100, count);

    }
}