public with sharing class VFController1 {
    
    public List<Account> getAccList(){
        
        List<Account> myAccs=[SELECT Id, name FROM Account];
        
        return myAccs;
        
        
    }
    
       public List<Opportunity> getOppList(){
        
        List<Opportunity> myOpp=[SELECT Id, name FROM Opportunity];
        
        return myOpp;
        
        
    }
    

}