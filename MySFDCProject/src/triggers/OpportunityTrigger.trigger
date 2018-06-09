trigger OpportunityTrigger on Opportunity (before insert,before update) {
    
    OpportunityTriggerHandler.leadCompetitorUpdate(Trigger.new);

}