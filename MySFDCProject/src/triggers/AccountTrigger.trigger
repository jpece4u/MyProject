trigger AccountTrigger on Account (before insert,after insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        
        AccountTriggerHandler.handleBeforeInsert(trigger.new);
    }
    
     if(Trigger.isAfter && Trigger.isInsert){
        
        AccountTriggerHandler.handleAfterInsert(trigger.new);
    }
    

}