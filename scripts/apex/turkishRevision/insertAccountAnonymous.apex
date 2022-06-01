// Account acc1 = new Account();
// Account acc2 = [select id from Account where name = 'University of Arizona vB'];

// acc1.name = 'Summer Fest LLC';
// acc1.ParentId = acc2.Id;
// acc1.Type = 'Technology Partner';
// acc1.Rating = 'Hot';
// acc1.AnnualRevenue = 200000000;
// insert acc1;

Account acc = [select id from Account where name = 'Summer Fest LLC'];
List<Contact> listCon = new List<Contact>();
       
       for (integer i=1 ; i<=3 ; i++){
              Contact cnt = new Contact();       
              cnt.lastName = 'Event Planner ' + i;
              cnt.phone = '+1 2345 7896';
              cnt.AccountId = acc.Id;
              cnt.LeadSource = 'Web';
              listCon.add(cnt); 
                   
       }
       insert listCon;  
