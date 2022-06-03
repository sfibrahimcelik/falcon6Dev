public with sharing class AccountQueueableExample implements Queueable{
    public List<Account> listAccount;

    public AccountQueueableExample(List<Account> accList){
        listAccount= accList;
//Contrubute some codes
    }

    public void execute(QueueableContext qc){
        for (account  a : listAccount) {
            a.Name = a.Name+ ' --SI';
        }
        update listAccount;
    } 
}
// controling
