<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Test Rule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Book__c.CreatedById</field>
            <operation>equals</operation>
            <value>Jay</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
