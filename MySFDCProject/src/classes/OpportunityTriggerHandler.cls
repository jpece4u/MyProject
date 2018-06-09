public class OpportunityTriggerHandler {
    //To update lead competitor with lowest price
    public static void leadCompetitorUpdate(List<Opportunity> opps){
        for(Opportunity opp:opps){
          List<Decimal> competitorPrices=new List<Decimal>();
           competitorPrices.add(opp.Competitor_1_Price__c) ;
            competitorPrices.add(opp.Competitor_2_Price__c) ;
            competitorPrices.add(opp.Competitor_3_Price__c) ;
            
            List<String> competitors=new List<String>();
            competitors.add(opp.Competitor1__c);
            competitors.add(opp.Competitor2__c);
            competitors.add(opp.Competitor3__c);
            Decimal lowestPrice;
            Integer lowesPricePosition;
            for(Integer i=0; i<competitorPrices.size(); i++ ){
                Decimal currentPrice=competitorPrices.get(i);
                if(lowestPrice==null||currentPrice>lowestPrice){
                    lowestPrice=currentPrice;
                    lowesPricePosition=i;
                    
                }
                
            }
            
opp.Leading_Caompetitor__c=competitors.get(lowesPricePosition);
            
        }
        
    }
}