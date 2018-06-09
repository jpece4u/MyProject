<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Contract_Expire_Action</fullName>
        <description>Contract Expire Action</description>
        <protected>false</protected>
        <recipients>
            <recipient>jpece4u1@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Email_Templates/Contract_Expiring</template>
    </alerts>
    <alerts>
        <fullName>Contract_Expire_Email</fullName>
        <description>Contract Expire Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>jpece4u1@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Email_Templates/Contract_Expiring</template>
    </alerts>
    <alerts>
        <fullName>Contract_Expire_Email_Alert</fullName>
        <description>Contract Expire Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>jpece4u1@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Email_Templates/Contract_Expiring</template>
    </alerts>
    <rules>
        <fullName>Follow Up Before Contract Expire</fullName>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Contract.Status</field>
            <operation>equals</operation>
            <value>Activated</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Contract_Expire_Email_Alert</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contract.EndDate</offsetFromField>
            <timeLength>-20</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
