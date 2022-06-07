//TASK 1; Print the JSON format of any 5 accounts from the Salesforce org. Fetch Id, Name, 
//AnnualRevenue and Type field from Account.

List<Account> accList = [Select id, name, AnnualRevenue, Type from account limit 5 ];
string accJSON = JSON.serialize(accList);
System.debug(accJSON);