public class ContactCustomController {
    
    Contact con;
    List<Contact> contacts=[SELECT Name, Id FROM contact];
    List<account> accs=[SELECT Name FROM Account ];
     List<Hospital__c> hosps=[SELECT Name FROM Hospital__c ];
    
    public List<Contact> getContacts(){
        return contacts;
    }
      public List<Account> getaccs(){
        return accs;
    }
      public List<Hospital__c> gethosps(){
        return hosps;
    }
    public Id Idvalue{get;set;}
    
    public PageReference goToEdit(){
        System.debug('Inside go to edit');
        // Idvalue = ApexPages.currentPage().getParameters().get('id');
        system.debug('Id value='+Idvalue);
        con=[SELECT Name, MobilePhone, Id FROM contact WHERE Id=:Idvalue];
        return Page.ContactEditPage;
    }

}