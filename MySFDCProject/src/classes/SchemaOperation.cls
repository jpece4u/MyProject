public class SchemaOperation {
    public void operations(){
        
        Map<String,Schema.SObjectType> sobjectMap=Schema.getGlobalDescribe();
Set<string> sobjectSet=sobjectMap.keySet();
List<string> sobjectList=new List<String>(sobjectSet);
        sobjectList.sort();
        System.debug('Itterating through all object');
        for(String s:sobjectList){
           system.debug(s); 
        }
        

        

Map<String,Schema.SObjectField> fieldMap=Schema.SObjectType.Account.fields.getMap();
Set<String> fieldSet=fieldMap.keySet();
List<String> fielList=new List<String>(fieldSet);
        System.debug('Iterating through Account fields');
        for(String accField:fielList){
            system.debug(accField);
            
        }
        
        
    }
    public void tabOperation(){
        
        List<Schema.DescribeTabSetResult> tabSetDesc = Schema.describeTabs();

// Iterate through each tab set describe for each app and display the info
for(DescribeTabSetResult tsr : tabSetDesc) {
    String appLabel = tsr.getLabel();
    System.debug('Label: ' + appLabel);
    System.debug('Logo URL: ' + tsr.getLogoUrl());
    System.debug('isSelected: ' + tsr.isSelected());
    String ns = tsr.getNamespace();
    if (ns == '') {
        System.debug('The ' + appLabel + ' app has no namespace defined.');
    }
    else {
        System.debug('Namespace: ' + ns);
    }
    
    // Display tab info for the Sales app
    if (appLabel == 'Sales') {
        List<Schema.DescribeTabResult> tabDesc = tsr.getTabs();
        System.debug('-- Tab information for the Sales app --');
        for(Schema.DescribeTabResult tr : tabDesc) {
            System.debug('getLabel: ' + tr.getLabel());
            System.debug('getColors: ' + tr.getColors());
            System.debug('getIconUrl: ' + tr.getIconUrl());
            System.debug('getIcons: ' + tr.getIcons());
            System.debug('getMiniIconUrl: ' + tr.getMiniIconUrl());
            System.debug('getSobjectName: ' + tr.getSobjectName());
            System.debug('getUrl: ' + tr.getUrl());
            System.debug('isCustom: ' + tr.isCustom());
        }
    }
}
        
        
        
        
        
        
    }
    public void describeSobjectOperation(){
        
        //Schema.SObjectType accToken=Account.SObjectType();
        List<String> ObjectsList=new List<String>{'Account','Contact'};
        Schema.DescribeSObjectResult [] descAccount=Schema.describeSObjects(ObjectsList);
        // For each returned result, get some info
for(Schema.DescribeSobjectResult res : descAccount) {
    System.debug('sObject Label: ' + res.getLabel());
    System.debug('Number of fields: ' + res.fields.getMap().size());
    System.debug(res.isCustom() ? 'This is a custom object.' : 'This is a standard object.');
    // Get child relationships
    Schema.ChildRelationship[] rels = res.getChildRelationships();
    if (rels.size() > 0) {
        System.debug(res.getName() + ' has ' + rels.size() + ' child relationships.');
    }
    Schema.RecordTypeInfo [] recordTypes=res.getRecordTypeInfos();
    for(RecordTypeInfo recordType:recordTypes){
        System.debug('Rcord Type Name:'+recordType.getName());
        System.debug('iSAvailable:'+recordType.isAvailable());
        
       // recordType.
        
    }
   
}
        
        
    }
    
    public void getFieldOperation(){
        
        
        Map<String,Schema.SObjectField> fieldMap=Schema.SObjectType.Account.fields.getMap();
Set<String> fieldSet=fieldMap.keySet();
List<String> fielList=new List<String>(fieldSet);
        System.debug('Iterating through Account fields');
        for(String accField:fielList){
            Schema.DescribeFieldResult field=fieldMap.get(accField).getDescribe();
            system.debug('Name: '+field.getName());
            system.debug('isAccessible'+field.accessible);
            List<Schema.PicklistEntry> picklist=field.getPickListValues();
            if(picklist.size() !=0){
               system.debug('picklist Values:'+picklist); 
                
            }
            
            system.debug(accField);
            
        }
        
    }
    
}