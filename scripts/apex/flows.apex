Account acc = [Select Id, OwnerId from account where Industry ='Biotechnology' limit 1];
System.debug(acc.Id);
Map<String, Object> inputs = new Map<String, Object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountOwnerId', acc.OwnerId);
Flow.Interview flow = new Flow.Interview.Account_Update(inputs);
flow.start();