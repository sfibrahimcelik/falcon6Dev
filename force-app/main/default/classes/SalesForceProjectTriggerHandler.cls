public  class SalesForceProjectTriggerHandler {
    public static void createDefaultSalesforceTicket(List<Salesforce_project__c> spTriggerNew ) {
       
       try{

        List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
        
        for (salesforce_Project__c sp : spTriggerNew) {
            DefaultTicket_Info__c ticketInfo= DefaultTicket_Info__c.getOrgDefaults();
            
            Salesforce_Ticket__c st= new Salesforce_Ticket__c();
            st.Subject__c =ticketInfo.Subject__c;
            st.Description__c= ticketInfo.description__c;
            st.Salesforce_Project__c= sp.id;
            st.Priority__c= 'High';
            listST.add(st);
        }
        if (!listst.isEmpty()) {
            insert listST;
            
        }
    }catch (Exception ex){
        for (salesforce_project__c  sp : spTriggerNew) {
            sp.addError('Error in default ticket creation. Please contact your administrator');
        }
    }
}
    @future
    public static void updateProjectDescription(set<id> setProjectIds ) {
        System.debug('called future method.');
        List<Salesforce_Project__c> lstSP = [Select id, description__c from Salesforce_Project__c where id in :setProjectIds];
        for (salesforce_project__c  eachSP : lstSP) {
            eachSP.Description__c= eachSP.Description__c+ ', Update from FUTURE!';
        }
        System.debug('sp to update = '+lstSP);
        update lstSP;
    }

    public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, 
   List<Salesforce_Project__c> spTriggerOld,
   Map<id, Salesforce_Project__c> spTriggerNewMap,
   Map<id, Salesforce_Project__c> spTriggerOldMap) {
       //get set<id> where status is changed.
       set<id> spIds = new set<id>();
       for (salesforce_project__c sp : spTriggerNew) {
           //if new record status != old record status
           //status is changed to 'Complated'
            if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
            && sp.Status__c == 'Completed'){
                spIds.add(sp.Id);
            }
       }
       if(!spIds.isEmpty()){
        updateTicketStatusCompleted(spIds);
           //call future method
       }
       
    }
    @future
       private static void updateTicketStatusCompleted(set<id> spIds) {
           List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
           for (salesforce_ticket__c st : listST) {
               st.Status__c = 'Completed';
           }
           if (!listST.isEmpty()) {
               update listST;
           }
       }
    
   }

