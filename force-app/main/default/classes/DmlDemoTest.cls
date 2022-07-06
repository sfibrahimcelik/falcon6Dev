@isTest
public  class DmlDemoTest {
   @isTest
    private static void dmlDemoTest1() {
       DmlDemo.dmlInsertDemo_stndObj();
       List<Account> listAcc =[Select id, name from account];
       system.assertEquals(1, listAcc.size());
       system.assertEquals('SoftInnovas', listAcc[0].name);
   }
   @isTest
   private static void dmlDemoUpdate2Test() {
    Account acc= new Account();   
     acc.Name = 'SoftInnovas Inc';
     insert acc;

       DmlDemo.dmlUpdateDemo_2();
       List<Contact> listCnt =[Select id, name from contact];
       system.assertEquals(1, listCnt.size());
       system.assertEquals('Biden', listCnt[0].name);
   }
}