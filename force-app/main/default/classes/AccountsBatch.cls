public class AccountsBatch implements Database.Batchable<SObject>, database.stateful{
    public integer count = 0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id,  description,active__c from account]);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        List<Account> updateAccount = new List<Account>();
        for (account acc : scope) {
            if (acc.Active__c == 'Yes') {
                acc.Description += '...updated via BATCH apex!';
                updateAccount.add(acc);
                count++;
            }
            
        }
        if (!updateAccount.isEmpty()) {
            system.debug('count in execute method: ' + count);
            update scope;
        }
        
    }
    public void finish(Database.BatchableContext bc){
        system.debug('done with updating ALL the ACCOUNTS');
    }
}