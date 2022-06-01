public  class TurkishLesson7 {
    public static void createAcc(string acName, decimal anRvn) {
        Account acc = new Account();
        acc.Name= acName;
        acc.AnnualRevenue= anRvn;
        System.debug(acc);
        insert acc;

        List<Contact> cntList= new List<Contact>();
        for (Integer i = 1; i < 5; i++) {
            contact cnt =new contact();
            cnt.FirstName= acc.name;
            cnt.LastName= 'Contact'+i;
            cnt.AccountId= acc.id;
            cntList.add(cnt);
        }
        if (!cntList.isEmpty()) {
            insert cntList;
            
        }
        
    }
}
