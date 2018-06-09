@isTest
public class AccountTriggerHandlerTest {
@isTest Public static void TestInsert() {
List<Account> accList =AccountTriggerHandlerTest.generateAccount(200);
    
    //or we can load data using Factory class
    //List<Account> accList =TestDataFactory.generateAccount(200);
    //Or usinf data loader
  //  List<sObject> accList =Test.loadData(Account.sobjectType, 'TestAccounts'); 
  //  NOTE: Test.loadData returns List<sObject>
  //  Here TestAccounts is the static resource name i.e saving file saved as static resource
test.startTest();
Insert accList;
test.stopTest();
List<Account> insertedAcc = [SELECT Id, Name, Description FROM Account WHERE Id IN :accList];
   List<Task> tAccTask = [SELECT Id, subject FROM Task WHERE whatId IN :accList];
    for(Account acc:insertedAcc){
        
        System.assertEquals('New Desciption from Trigger', acc.Description);
    }
    for(Task task:tAccTask){
        system.assertEquals('New Account Auto Task', task.subject);
        
    }    
    

}
    static List<Account> generateAccount(Integer accNo){
        List<Account> accgeneratedList=new List<Account>();
        for(Integer i=1; i<=accNo; i++){
            Account acc=new Account();
            acc.Name='Test Account '+i;
            accgeneratedList.add(acc);
        }
        return accgeneratedList;
    }
    
}