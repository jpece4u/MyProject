public class SOQLPractice {
    public void AggregateTask(){
      List<AggregateResult> aggs=[SELECT Account.Name accName, COUNT(Id) countId, SUM(Amount)
                                sumAmount FROM Opportunity GROUP BY Account.Name]  ;
        system.debug('aggs');
        System.debug('There are '+aggs.size()+' rows returned');
        for(AggregateResult agg:aggs){
            system.debug('Name'+agg.get('accName')+'	count Id '+agg.get('countId')+'	Sum Amount '+agg.get('sumAmount'));
        }
        
    }
    public void avgTask(){
        LIst<AggregateResult> aggs=[SELECT AVG(Amount) avg FROM Opportunity WHERE 
                                   Account.Name='Edge Communications'];

            system.debug(aggs);
        Object avg=aggs[0].get('avg');
        System.debug(avg);
            }
    
    
}