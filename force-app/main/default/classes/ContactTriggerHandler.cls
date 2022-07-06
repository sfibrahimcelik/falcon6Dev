public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
                                          Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
             //.AddError is allowed in Trigger.NEW.
             //it is not allowed in trigger.old
             for(contact eachContact: cntTriggerNew){
                 contact oldContact = cntTriggerOldMap.get(eachContact.id);
                 if(oldContact.LeadSource == 'Partner Referral'){
                     eachContact.addError('Cannot update contact where lead source is Partner Referral');
                 }
             }
 
    }
 
    public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
     Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
         for(contact eachContact: cntTriggerNew){
                 contact oldContact = cntTriggerOldMap.get(eachContact.id);
                 if(oldContact.LeadSource != eachContact.LeadSource){
                    string customValidation = System.label.contactValidation2;
                    eachContact.LeadSource.addError(customValidation);

                 }
             }
     }
 }
// public class ContactTriggerHandler {
//     public static void cntcInsert (List<contact> cntTriggerNew, List<contact> cntTriggerOld,
//                                           Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//                                             et<id> accountIds = new set<id>();
//           if (trigger.isAfter) {
//              if (trigger.isInsert || trigger.isUndelete) {
//                 for (contact c : triiger.new) {
//                       if (c.AccountId!=null) {
//                          accountIds.add(c.AccountId);
//                  }
//               }
//           }
//         }
//     }
//     public static void cntcUpdate (List<contact> cntTriggerNew, List<contact> cntTriggerOld,
//                                     Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//                                             et<id> accountIds = new set<id>();
//         if (trigger.isUpdate) {
//             for (contact c : cntTriggerNew) {
//                 if (c.AccountId!= trigger.oldMap.get(c.id).AccountId) {
                                                        
//                 accountIds.add(c.AccountId);
//                 accountids.add(trigger.oldMap.get(c.id).AccountId);
//                 }
//             }   
//         }
//     }

//     public static void cntcDelete (List<contact> cntTriggerNew, List<contact> cntTriggerOld,
//                                     Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//                                             et<id> accountIds = new set<id>();
//         if (trigger.isUpdate) {
//             for (contact c : trigger.newMap) {
//                 if (c.AccountId!= trigger.oldMap.get(c.id).AccountId) {
                                                        
//                 accountIds.add(c.AccountId);
//                 accountIds.add(trigger.oldMap.get(c.id).AccountId);
//                 }
//             }   
//         }
//     }


   
   
   
    // public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    //                                       Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
 
    //          for(contact eachContact: cntTriggerNew){
    //              if(eachContact.LeadSource == 'Partner Referral'){
    //                  eachContact.addError('Cannot update contact where lead source is Partner Referral');
    //              }
    //          }
 
    // }
    // public static void contactUpdatevalidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    // Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap) {
    //     for (contact eachContact : cntTriggerNew) {
    //         contact oldContact= cntTriggerOldMap.get(eachContact.Id);
    //         if (oldContact.LeadSource != eachContact.LeadSource) {
    //             eachContact.LeadSource.addError('Cannot update');
                
    //         }
            
    //     }
        
    // }

    // Set<Id> accountIds = new Set<Id>();
    // if(trigger.isAfter){
    //     if(trigger.isInsert || trigger.isUndelete){
    //          for(contact c : trigger.new){
    //              if(c.AccountId != null){
    //                  accountIds.add(c.AccountId);
    //              }
    //          }
    //     }
 
    //     if(trigger.isUpdate){
    //         for(contact c : trigger.new){
    //             if(c.AccountId != trigger.oldMap.get(c.Id).AccountId){
    //                 accountIds.add(c.AccountId);
    //                 accountIds.add(trigger.oldMap.get(c.Id).AccountId);
    //             }
    //         }
 
    //     }
 
    //     if(trigger.isDelete){
    //       for(contact c : trigger.old){
    //           if(c.AccountId != null){
    //              accountIds.add(c.AccountId);
    //           }
    //       }
    //     }
 
    //     if(!accountIds.isEmpty()){
    //         List<Account> accList = [select id, name, Number_of_Contacts__c, (select id from contacts) from Account where id in :accountIds];
 
    //         if(!accList.isEmpty()){
    //             list<Account> updateAccountList = new list<Account>();
    //             for(Account eachAcc : accList){
    //                 List<Contact> contactsList = eachAcc.contacts;
 
    //                 Account acc = new Account();
    //                 acc.id = eachAcc.id;
    //                 acc.Number_of_Contacts__c = contactsList.size();
    //                 updateAccountList.add(acc);
    //             }
    //             if(!updateAccountList.isEmpty()){
    //                 update updateAccountList;
    //             }
    //         }
    //     }
    // }