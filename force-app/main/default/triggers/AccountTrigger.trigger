trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        system.debug('before insert/update trigger end.');
        
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}



//trigger AccountTrigger on Account( before insert, before update, after insert, after update){
    // AccountTriggerHandler.updateVipForAllAcontacta(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    
    // System.debug('Before insert/update trigger called');
    // if (trigger.isBefore) {
    //     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     System.debug('Before insert/update trigger end');
    // }
   
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(account ac : trigger.new){
    //         if(ac.AnnualRevenue != trigger.oldMap.get(ac.id).AnnualRevenue && trigger.oldMap.get(ac.id).AnnualRevenue != null){
    //             if(ac.AnnualRevenue > trigger.oldMap.get(ac.id).AnnualRevenue){
    //                 decimal fark = ac.AnnualRevenue - trigger.oldMap.get(ac.id).AnnualRevenue;
    //                 ac.Description = fark + ' Annual revenue arttı';
    //             } else {
    //                 decimal fark = trigger.oldMap.get(ac.id).AnnualRevenue - ac.AnnualRevenue;
    //                 ac.Description = fark + ' Annual revenue azaldı';
    //             }
    //         } else {
    //             ac.Description = ac.AnnualRevenue + ' yeni eklendi';
    //         }
    //     }
    // }

    //     if (Trigger.isInsert && Trigger.isBefore) {
//         system.debug('---------isInsert && isBefore START------------');
//         system.debug('trigger new = ' + trigger.new);
//         system.debug('trigger old = ' + trigger.old);
//         system.debug('trigger new Map = ' + trigger.newMap);
//         system.debug('trigger old Map = ' + trigger.oldMap);
//         system.debug('---------isInsert && isBefore END------------');
//         System.debug('                                    ');
//     }
//     if (Trigger.isInsert && Trigger.isAfter) {
//         System.debug('                                    ');
//         system.debug('---------isInsert && isAfter START------------');
//         system.debug('trigger new = ' + trigger.new);
//         system.debug('trigger old = ' + trigger.old);
//         system.debug('trigger new Map = ' + trigger.newMap);
//         system.debug('trigger old Map = ' + trigger.oldMap);
//         system.debug('---------isInsert && isAfter END------------');
//         System.debug('                                    ');
//     }
//     if (Trigger.isUpdate && Trigger.isBefore) {
//         System.debug('                                    ');
//         system.debug('---------isUpdate && isBefore START------------');
//         system.debug('trigger new = ' + trigger.new);
//         system.debug('trigger old = ' + trigger.old);
//         system.debug('trigger new Map = ' + trigger.newMap);
//         system.debug('trigger old Map = ' + trigger.oldMap);
//         system.debug('---------isUpdate && isBefore END------------');
//         System.debug('                                    ');
//     }
//     if (Trigger.isUpdate && Trigger.isAfter) {
//         for(account ac : trigger.new){
//             System.debug(ac.name);
//             System.debug(ac.id);
//         }
// for(id accId : trigger.newMap.keyset()){
//             System.debug(trigger.newMap.get(accId));
//             System.debug(trigger.oldMap.get(accId));
// }
//         System.debug('                                    ');
//         system.debug('---------isUpdate && isAfter START------------');
//         system.debug('trigger new = ' + trigger.new);
//         system.debug('trigger old = ' + trigger.old);
//         system.debug('trigger new Map = ' + trigger.newMap);
//         system.debug('trigger old Map = ' + trigger.oldMap);
//         system.debug('---------isUpdate && isAfter END------------');
//         System.debug('                                    ');
//     }


    //    if (trigger.isBefore) {
//        System.debug('Before insert/update trigger called');

//        map<id, account> newAccountMap= trigger.newMap;
//        map<id, account> oldAccountmap= trigger.oldMap;
//        for (account eachAcc : trigger.new) {
//            if (trigger.isInsert && eachAcc.Active__c=='Yes') {
//                eachAcc.Description='Account is now active. Enjoy!';
               
//            }
//            if (trigger.isUpdate) 
//            Account oldAccount= oldAccountMap.get(eachAcc.Id);
//             string oldAccountActive= oldAccount.Active__c;

//                if (eachAcc.Active__c=='Yes'&& oldAccountActive!='Yes') {
//                 eachAcc.Description='Account is now active. Enjoy!';  
//                }
               
//            }
           
//        }
       
   
   
    // if (trigger.isAfter && trigger.isUpdate){
    //     map<id, account> newAccMap= trigger.newMap;
    //     map<id, account> oldAccMap= trigger.oldMap;

    //     set<id> setOfAccIds= newAccMap.keySet();

    //     integer countWebsiteUpdated =0;
    //     for (ID eachID : setOfAccIds) {
    //         account oldAcc=oldAccMap.get(eachId);
    //         string oldWebsite = oldAcc.Website;
    //         account newAcc= newAccMap.get(eachId);
    //         string newWebsite= newAcc.Website;

    //         if (oldWebsite!=NewWebsite) {
    //             System.debug('For Account '+ ',new website is '+ newWebsite);
    //             countWebsiteUpdated++;
                
    //         }
            
    //     }
    //     System.debug('# of account website updated= '+ countWebsiteUpdated);
    // }
   
    // if (trigger.isAfter && trigger.isUpdate) {
    //     map<id, account> newAccMap=trigger.newmap;
    //     map<id, account> oldAccMap= trigger.oldMap;
    //     set<id> setOfIds=newAccMap.keySet();
    //     for (ID eachId: setOfIds ) {
    //         System.debug('-------------');
    //         System.debug('each id = '+eachId);

    //         Account newAccount= newAccMap.get(eachId);
    //         System.debug(' new acc name= '+newAccount.Name);

    //         Account oldAccount = oldAccMap.get(eachId);
    //         System.debug('old acc name= '+oldAccount.Name);
    //     }
        
    // }
   
    // map<id, account> trgNewMap = trigger.newMap;
    // map<id, account> trgOldMap = trigger.oldMap;

    // if(trigger.isBefore &&  trigger.isInsert){
    //     system.debug('=======BEFORE INSERT=========');
    //     system.debug('Before insert OLD MAP = ' + trgOldMap);
    //     system.debug('Before insert NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isInsert){
    //     system.debug('=======AFTER INSERT=========');
    //     system.debug('AFter insert OLD MAP = ' + trgOldMap);
    //     system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    // }

    // if(trigger.isBefore &&  trigger.isUpdate){
    //     system.debug('=======BEFORE UPDATE=========');
    //     system.debug('Before update OLD MAP = ' + trgOldMap);
    //     system.debug('Before update NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isUpdate){
    //     system.debug('=======AFTER UPDATE=========');
    //     system.debug('AFter update OLD MAP = ' + trgOldMap);
    //     system.debug('AFter update NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter){
    //     if(trigger.isUpdate){
    //         List<account> oldAccounts = trigger.old;
    //         List<account> newAccounts = trigger.new;

    //         for(account oldAcc: oldaccounts){
    //             system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
    //         }
    //         for(account newAcc: newaccounts){
    //             system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
    //         }
    //     }
    // }
        
    
    
    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('trigger.old = '+trigger.old);
        
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('trigger .old after insert ='+trigger.old);
    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //     System.debug('trigger.old  before update= '+trigger.old);
        
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('trigger .old after update ='+trigger.old);
    // }
    // if (trigger.isBefore&& trigger.isInsert) {
    //     System.debug('trigger.new before insert ='+ trigger.new);  
    // }

    // if (trigger.isInsert && trigger.isAfter) {
    //     System.debug('trigger.new after insert= '+trigger.new);
        
    // }
    
    // if ((trigger.isAfter && trigger.isInsert)) {
    //     System.debug('Account inseert yapildi');
        
        
    // }
// if (Trigger.isInsert && Trigger.isBefore) {
//     system.debug('---------isInsert && isBefore START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isInsert && isBefore END------------');
// }
// if (Trigger.isInsert && Trigger.isAfter) {
//     system.debug('---------isInsert && isAfter START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isInsert && isAfter END------------');
// }
// if (Trigger.isUpdate && Trigger.isBefore) {
//     system.debug('---------isUpdate && isBefore START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isUpdate && isBefore END------------');
// }
// if (Trigger.isUpdate && Trigger.isAfter) {
//     system.debug('---------isUpdate && isAfter START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isUpdate && isAfter END------------');
// }
// if (trigger.isInsert && trigger.isAfter) {
//     //trigger.new -> record(s) which were responsible for firing the trigger
//     system.debug('trigger.new after insert = ' + trigger.new);

//     list<account> newAccounts = trigger.new;

//     system.debug('total account inserted = ' + newaccounts.size());
//     for (account acc : newAccounts) {
//         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
//     }
// }

