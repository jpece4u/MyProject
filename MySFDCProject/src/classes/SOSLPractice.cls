public class SOSLPractice {
    
    public void method1(){
        
        
   List< List<sObject> > results=[FIND 'oil' IN Name Fields RETURNING Account(name), Opportunity(name), Contact(name)] ;
    List<Account> accs=(List<Account>)results[0];
    List<Opportunity> opps=(List<Opportunity>)results[1];
    List<Contact> contacts=(List<Contact>)results[2];
    system.debug(accs[0].name);
        
    for(Account acc:accs){
        system.debug('Name '+acc.name);
    } 

    }
  
    
    
    
    
}