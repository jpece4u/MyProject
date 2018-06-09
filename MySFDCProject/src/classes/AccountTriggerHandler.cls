public class AccountTriggerHandler {
    public static void handleBeforeInsert(List<Account> accs){
        for(Account a:accs ){
            //Prevent user to create Account with followind detaails
            // mame=Error Account
            if(a.Name=='Error Account'){
            a.addError('This account can not be added');
        } 
            
            //To set Description before saving any account 
            a.description='New Desciption from Trigger';
            //To log Hello world
            system.debug('Hello World'); 
            
        }
        
    }
    public static void handleAfterInsert(List<Account> accs){
        List<Task> myTasks=new List<Task>();
        
        for(Account a:accs){
            Task atask=new Task();
            atask.OwnerId=a.OwnerId;
             atask.Subject='New Account Auto Task';
        atask.Priority='Normal';
        atask.WhatId=a.id;     
       myTasks.add(atask)  ;          
        }
        Insert myTasks;
        
    }
    
}