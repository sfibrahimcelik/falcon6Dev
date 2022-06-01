trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('trigger called');
        SalesForceProjectTriggerHandler.updateProjectDescription(trigger.newmap.keySet());
        System.debug('Future method called already. second method is calling');
        SalesForceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.New); 
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesForceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}