public  class AccountInfo {
    public static void showAccounts() {
        List<Account> AccWithOpp=[ Select id, name, (Select id, name from opportunities where closeDate>today)from account];
        System.debug('date is in future '+AccWithOpp);
        for (Account eachAcc : AccWithOpp) {
            System.debug('Account name '+eachAcc.Name);
            for (Opportunity eachOpp : eachAcc.Opportunities) {
                System.debug('Opp names '+eachOpp.Name);
                
            }
        }
        {
            
        }
    }
    
}
