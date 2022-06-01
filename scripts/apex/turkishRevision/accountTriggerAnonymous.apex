// list<Account> acList = new list<Account>();
// account ac = new account();
// ac.name = 'ac trigger name';
// acList.add(ac);
// account ac2 = new account();
// ac2.name = 'ac trigger name 2';
// acList.add(ac2);

// insert acList;

// ac.name = 'ac trigger name update';
// update ac;

// account acc = new account();
// acc.name = 'trigger account 1';
// insert acc;
// acc.name = 'trigger account update';
// update acc;

// 1 Account ve buna bağlı 7 tane contact create edelim..
// account acc1 = new account();
// acc1.name = 'account trigger test';
// insert acc1;
// list<Contact> conList = new list<Contact>();
// for (Integer i = 1; i <= 7; i++) {
//     contact cn = new contact();
//     cn.lastName = 'Contact ' + i;
//     cn.accountId = acc1.id; // contactı accounta bağladım..
//     conList.add(cn);
// }
// if (!conList.isEmpty()) {
//     insert conList;
// }