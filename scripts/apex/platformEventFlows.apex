Custom_Notification__e evt = new Custom_Notification__e();
evt.Message__c = ' Yshoo... Leads have been process succesfuly';
evt.initiator__c =' Leads Process Batch';
EventBus.publish(evt);