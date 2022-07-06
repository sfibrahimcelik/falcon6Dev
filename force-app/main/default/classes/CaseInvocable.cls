public with sharing class CaseInvocable {
    
    @InvocableMethod(label='Send Email & Save Activity'
    description='Sends an email and saves the same as an activity'
    category='Case')
    public static void sendEmail(List<FlowInput> inputs) {
        FlowInput input = inputs[0];
        List<Messaging.SingleEmailMessage> msgs = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        msg.setTargetObjectId(input.contactId);
        msg.setSubject('case Created: '+input.caseNumber);
        msg.setPlainTextBody('Hello there, \n A case has been created for you to answer your query. '
                            + 'One of our customer representative is going to reachout to you. Stay tuned!'
                            + '\n Thank you!');
        msgs.add(msg);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(msgs);
        for(Messaging.SendEmailResult result : results){
            if(result.isSuccess()){
                system.debug('Succesfully sent!');
            }else{
                system.debug(result.getErrors());
            }
        }
    }

    public class FlowInput {
       @InvocableVariable
        public String caseNumber;
        @InvocableVariable
        public Id contactId;
    }

    /*account name, List<contactname> & List<opp name>
    public class DataClass {
        public String accName;
        public List<String> conNames;
        public List<String> oppNames;
    }*/
}