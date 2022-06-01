list<case> listCase = new list<case>();
    for (Integer i = 0; i < 205; i++) {
        case c = new case();
        c.Subject = 'There is a bug';
        c.Description = 'resolve it';
        c.Status = 'New';
        c.Origin = 'Web';
        listCase.add(c);
    }
    insert listCase;

List<case> updatecase = [select id, status from case where status = 'New'];
for (case c : updatecase) {
    c.Status = 'Working';
}
update updateCase;



// DmlDemo.dmlInsertDemo_stndObj();
// DmlDemo.dmlInsertDemo_cstmObj();
// DmlDemo.dmlUpdateDemo_1();
// DmlDemo.dmlUpdateDemo_3();
// DmlDemo.dmlUpdateDemo_2();
// DmlDemo.dmlMultipleRecordInsert_right();
// DmlDemo.dmlMultipleRecordInsert_2();

// List<Account> listAcc = [select id, name, website from account order by CreatedDate limit 10];
    
//        list<account> updateAccounts = new list<account>();

//         integer counter = 0;
//        for (account acc : listAcc) {
           
//            if(counter < 5){
//                 acc.Website = 'newwebsite.com';
//            } else {
//                acc.name = acc.name + ' v2';
//            }
           
//            updateAccounts.add(acc);
//            counter++;
//        }
//        if(!updateAccounts.isEmpty()){
//            update updateAccounts;
//        }