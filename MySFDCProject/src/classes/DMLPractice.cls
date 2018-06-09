public class DMLPractice {

    public void createBulkAccount(){
        List<Account> accList= new List<Account>();
        
        for(Integer i=1;i<=10;i++){
            Account acc=new Account();
            acc.Name='Test Account'+i;
            accList.add(acc);
           
        }
        Insert accList;
        
    }
    public void deleteBulk(){
           List<Account> acclist= new List<Account>();
        acclist=[SELECT Id FROM Account WHERE Name LIKE 'Test Account%'] ;
        Delete accList;
        
    }
    
    public void dataBaseOperation(){
        List<Contact> contactList=new List<Contact>{new Contact(FirstName='Vinod',LastName='Mandal'),
            new Contact(FirstName='Joe')};
        List<Database.SaveResult> resultList=Database.insert(contactList,false);
        
        for(Database.SaveResult result:resultList){
            
            if(result.isSuccess()){
                system.debug('Insertion succeed and ContactId is'+result.getId());
            }
            else{
                for(Database.Error err:result.getErrors()){
                
               System.debug('Insertion failed ');
                system.debug('Error is:'+err.getMessage());
                
            }
            }
        }
        
        
    }
    
}