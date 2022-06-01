public  class AccountUtility {
    public static void viewAnnualRevenue() {
        List<Account> accountsList=[
            Select
                Name, AnnualRevenue
            FROM
            Account

        ];
        for (Account acc : accountsList) {
            string acctRev = acc.Name + ':'+ acc.AnnualRevenue;
            System.debug(acctRev);
            
        }
    }
    
}
