@RestResource(urlMapping ='/leadCustom/*')
global class CustomLeadApi {
    
 //return contact details and account name
    @httpGet
    global static Lead getLeadId() {
        system.debug('custom Lead api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string leadId = uri.substring(idStartIndex);
        system.debug('leadId: ' + leadId);
        //Fetch contact details from contact ID
        lead l = [
            select name, email, company, status, phone
            from lead
            where id = :leadId
        ];
        return l;
    }


    @HttpPost
    global static Id createlead(
    string fName, string lName, string company, string leadStatus){

    lead l2 = new lead();
    l2.FirstName = fName;
    l2.LastName = lName;
    l2.Company = company;
    l2.Status = leadStatus;
    insert l2;
    return l2.id;
}

@httpDelete
    global static String deleteLead(){
        system.debug('custom lead api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //FETCH CONTACT ID FROM URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex : ' + idStartIndex);
        string leadId =uri.substring(idStartIndex);
        system.debug('leadId : ' + leadId);
        
        //FETCH CONTACT DETAILS FROM CONTACT ID
        lead l = new lead();
        l.id = leadId;

        delete l;
        return 'lead deleted with id: ' + leadId;
    } 
}

//     @httpDelete
//     global static String deleteContact() {
//         system.debug('custom contact api call success.');
//         //GET URI
//         RestRequest request = RestContext.request;
//         string uri = request.requestURI;
//         system.debug('URI : ' + request.requestURI);
//         //Fetch contact ID from URI
//         //    /ContactCustom/0035j00000SesCxAAJ
//         integer idStartIndex = uri.lastIndexOf('/')+1;
//         system.debug('idStartIndex: ' + idStartIndex);
//         string contactId = uri.substring(idStartIndex);
//         system.debug('contactId: ' + contactId);
        
//         contact c = new contact();
//         c.id = contactId;

//         delete c;
//         return 'Contact deleted with id: ' + contactId;
//     }

//     @httpPut
//     global static List<id> upsertContact(List<Contact> cons){
       
//         upsert cons;

//         list<id> ids = new list<id>();
//         for (contact con : cons) {
//             ids.add(con.id);
//         }
//         return ids;
//     }
// }