@isTest
public class TestDataFactory {
static List<Account> generateAccount(Integer accNo){
        List<Account> accgeneratedList=new List<Account>();
        for(Integer i=1; i<=accNo; i++){
            Account acc=new Account();
            acc.name='Account '+i;
            accgeneratedList.add(acc);
        }
        return accgeneratedList;
    }
}