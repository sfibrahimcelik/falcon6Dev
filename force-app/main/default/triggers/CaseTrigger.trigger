

//    trigger CaseTrigger on Case (before insert, before update) {
//     if (trigger.isInsert) {
//         System.debug('before insert trigger called');

//     }
//     if (trigger.isUpdate) {
//         CaseTriggerHandler.countTriggerExecution++;
//         System.debug('#of times trigger executed');

//         CaseTriggerHandler.countTriggerExecution+= trigger.size;
//         System.debug('# of records updated= '+CaseTriggerHandler.countTriggerExecution);
        
//     }
    
    
// }