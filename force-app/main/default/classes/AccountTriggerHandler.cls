public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew,
                                                List<account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap){
        system.debug('inside handler method');
         for(account eachAcc: accTriggerNew){
            boolean updateDesc = false;
            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(accTriggerOldMap != null){
                Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    }
    public static void updateVipForAllAcontacts(list<account> accTriggerNew, list<account> accTriggerOld, 
                                    Map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){
            system.debug('update all contact\'s VIP field');
            set<id> setAccIds = new Set<id>();
            for(account eachAcc: accTriggerNew){
                if(eachAcc.Vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c){
                    setAccIds.add(eachAcc.Id);
                }
            }

            List<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];

            for(contact eachContact : listContacts){
                Account newAccount = accTriggerNewMap.get(eachContact.account.id);
                boolean newAccVip = newAccount.vip__c;

                eachContact.vip__c = newAccVip;
            }
            if(!listContacts.isEmpty()){
                update listContacts;
            }


    }
}




// public  class AccountTriggerHandler {
//    public static void updateAccountDescription(List<account> accTriggerNew, 
//                                                 List<account> accTriggerOld, 
//                                                 Map<id, account> accTriggerNewMap, 
//                                                 Map<id, account> accTriggerOldMap) {
//      System.debug('Trigger handler start') ;
//     for (account eachAcc : accTriggerNew) {
//         boolean updateDesc = false;
//         if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
//             updateDesc = true;
//         }
//         if(accTriggerOldMap != null){
//             Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
            
//             string oldAccountActive = oldAccount.Active__c;
//             //check if active is updated
//             //active is changed to 'Yes'
//             if(eachAcc.Active__c == 'Yes' &&
//                 oldAccountActive != 'Yes'
//             ) {
//                 updateDesc = true;
//             }
//         }
//         if(updateDesc){
//             eachAcc.Description = 'Account is now active. Enjoy!';
//         }
//     }
// }
// public static void updateVipForAllAcontacta(List<account> accTriggerNew, 
//                                             List<account> accTriggerOld, 
//                                             Map<id, account> accTriggerNewMap, 
//                                             Map<id, account> accTriggerOldMap) {
//     System.debug('update all contact\'s ');
//     Set<id> setAccIds= new set<id>();
//     for (account eachAcc : accTriggerNew) {
//         if (eachAcc.VIP__c!=accTriggerOldMap.get(eachAcc.id).VIP__c){
//             setAccIds.add(eachAcc.Id);
//         }
        
//     }
//     List<Contact> listContacts=[select id, name, account.id, vip__c from contact WHERE account.id in :setAccIds];
//     for (contact eachCon : listContacts) {
//       Account newAccount =accTriggerNewMap.get(eachCon.Account.Id);
//       boolean newAccVip = newAccount.vip__c;
//       eachCon.vip__c = newAccount.vip__c;  
//     }
//     if (!listContacts.isEmpty()) {
//         update listContacts;
        
//     }

// }
// }
