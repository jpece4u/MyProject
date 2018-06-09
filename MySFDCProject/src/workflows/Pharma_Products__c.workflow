<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>MyTest</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Pharma_Products__c.Price__c</field>
            <operation>greaterThan</operation>
            <value>100000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
