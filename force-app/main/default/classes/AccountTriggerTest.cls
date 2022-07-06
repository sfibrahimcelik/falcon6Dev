@isTest
public with sharing class AccountTriggerTest {
    @isTest
    public static void testMethod1() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';
        acc1.Active__c ='Yes';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c ='No';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';
        acc3.Active__c ='No';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;
        for (account acc : listAcc) {
            acc.vip__c = true;
        }
        update listAcc;

        List<account> accounts = [Select id, name, vip__c from account];
        system.assertEquals(true, accounts[0].vip__c);
    }
}