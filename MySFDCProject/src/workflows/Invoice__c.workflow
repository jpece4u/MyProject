<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Due_Amount_Bill</fullName>
        <description>Due Amount Bill</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Email_Templates/Bill_Generation_Template</template>
    </alerts>
    <alerts>
        <fullName>Email_To_Invoice_Owner</fullName>
        <description>Email To Invoice Owner</description>
        <protected>false</protected>
        <recipients>
            <recipient>jpece4u1@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Email_Templates/Email_To_Invoice_owner</template>
    </alerts>
    <fieldUpdates>
        <fullName>Bulk_Invoice_Update</fullName>
        <field>Bulk_Invoice__c</field>
        <literalValue>1</literalValue>
        <name>Bulk Invoice Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Invoice_Outbound_msg</fullName>
        <apiVersion>42.0</apiVersion>
        <endpointUrl>https://www.google.co.in</endpointUrl>
        <fields>CreatedDate</fields>
        <fields>Final_Amount__c</fields>
        <fields>Hospital__c</fields>
        <fields>Id</fields>
        <fields>Invoice_Amount__c</fields>
        <fields>Invoice_Date__c</fields>
        <fields>Name</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>jay@plasma.com</integrationUser>
        <name>Invoice Outbound msg</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Amount greater than 10000</fullName>
        <actions>
            <name>Email_To_Invoice_Owner</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Bulk_Invoice_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Invoice_Outbound_msg</name>
            <type>OutboundMessage</type>
        </actions>
        <actions>
            <name>Review_The_Invoice</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Invoice__c.Invoice_Amount__c</field>
            <operation>greaterThan</operation>
            <value>10000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Review_The_Invoice</fullName>
        <assignedTo>jpece4u1@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Review The Invoice .</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Invoice__c.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Review The Invoice</subject>
    </tasks>
</Workflow>
