trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }

}


// trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {

//     set<id> accountIds = new set<id>();
//     if (trigger.isAfter) {
//         if (trigger.isInsert || trigger.isUndelete) {
//             for (contact c : triiger.new) {
//                 if (c.AccountId!=null) {
//                     accountIds.add(c.AccountId);
//                 }
//             }
//         }
//         if (trigger.isUpdate) {
//             for (contact c : trigger.newMap) {
//                 if (c.AccountId!= trigger.oldMap.get(c.id).AccountId) {
                    
//                     accountIds.add(c.AccountId);
//                     accountids.add(trigger.oldMap.get(c.id).AccountId);
//                 }
//             }
//         }
//         if (trigger.isDelete) {
//             for (contact c  : trigger.old) {
//                 accountIds.add(c.AccountId);
//             }
//         }
//         if(!accountIds.isEmpty()){
//             List<Account> accList = [select id, name, Number_of_Contacts__c, (select id from contacts) from Account where id in :accountIds];
 
//             if(!accList.isEmpty()){
//                 list<Account> updateAccountList = new list<Account>();
//                 for(Account eachAcc : accList){
//                     List<Contact> contactsList = eachAcc.contacts;
 
//                     Account acc = new Account();
//                     acc.id = eachAcc.id;
//                     acc.Number_of_Contacts__c = contactsList.size();
//                     updateAccountList.add(acc);
//                 }
//                 if(!updateAccountList.isEmpty()){
//                     update updateAccountList;
//                 }
//             }
//         }
//     }
 
//  }   
    // if(trigger.isBefore && trigger.isUpdate){
    //     ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    // Set<Id> accountIds = new Set<Id>();
    // if(trigger.isAfter){
    //     if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
    //         for (contact c : trigger.new) {
    //             if(c.accountid != null){
    //                 accountIds.add(c.AccountId);
    //             }
    //         }
    //     }
    //     if(trigger.isUpdate || trigger.isdelete){
    //         for (contact c : trigger.old) {
    //             if(c.accountid != null){
    //                 accountIds.add(c.AccountId);
    //             }
    //         }
    //     }

    //     if(!accountIds.isEmpty()){
    //         List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
    //         from account where id in :accountIds];

    //         if(!accList.isEmpty()){
    //             list<account> updateAccList = new list<account>();
    //             for (account eachAcc : accList) {
    //                 List<contact> listContacts = eachAcc.contacts;
                    
    //                 Account acc = new account();
    //                 acc.id = eachAcc.id;
    //                 acc.number_of_contacts__c = listContacts.size();
    //                 updateAccList.add(acc);
    //             }
    //             if(!updateAccList.isEmpty()){
    //                 update updateAccList;
    //             }
    //         }
    //     }
    // }


    
    
    // if(trigger.isBefore && trigger.isUpdate){
    //     ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }

   
        //Last name değişirse/güncellenirse(Update) Description da 'Contactın name değişti'
        // version 1
        // if(trigger.isBefore && trigger.isUpdate){
        //     for(contact cn : trigger.new){
        //         if(cn.lastName != trigger.oldMap.get(cn.id).lastName){ //isimler değişmişse
        //             //Description da 'Contactın name değişti' yazacak
        //             cn.Description = 'Contactın name değişti';
        //         } else {
        //             cn.Description = '';
        //         }     
        //     }
        // }
    
        // // version 2
        // if(trigger.isBefore && trigger.isUpdate){
        //     for(contact cn : trigger.new){
        //         contact oldCn = trigger.oldMap.get(cn.id);
        //         if(cn.lastName != oldCn.lastName){ //isimler değişmişse
        //             //Description da 'Contactın name değişti' yazacak
        //             cn.Description = 'Contactın name değişti';
        //         } else {
        //             cn.Description = '';
        //         }     
        //     }
        
        
    
    
    // if (trigger.isBefore) {
    //     System.debug('We are in the before TRIGGER');
    //     if (trigger.isInsert) {
    //         System.debug('Before insert trigger.new= '+trigger.new);  
    //         System.debug('Before insert trigger.newmap='+ trigger.newMap);
    //         System.debug('Before insert trigger.old= '+trigger.old);
    //         System.debug('Before insert trigger.oldmap= '+trigger.oldMap);
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('Before update trigger.new= '+trigger.new);  
    //         System.debug('Before update trigger.newmap='+ trigger.newMap);
    //         System.debug('Before update trigger.old= '+trigger.old);
    //         System.debug('Before update trigger.oldmap= '+trigger.oldMap);
    //     }
    // }
    // if (trigger.isAfter) {
    //     System.debug('We are the after TRIGGER');
    //     if (trigger.isInsert) {
    //         System.debug('After insert trigger.new= '+trigger.new);  
    //         System.debug('After insert trigger.newmap='+ trigger.newMap);
    //         System.debug('After insert trigger.old= '+trigger.old);
    //         System.debug('After insert trigger.oldmap= '+trigger.oldMap);
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('After update trigger.new= '+trigger.new);  
    //         System.debug('After update trigger.newmap='+ trigger.newMap);
    //         System.debug('After update trigger.old= '+trigger.old);
    //         System.debug('After update trigger.oldmap= '+trigger.oldMap);
    //     }
    // }

