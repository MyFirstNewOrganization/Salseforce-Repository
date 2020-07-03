trigger checkmail on Job__c (After insert,After update) 
{
    if((trigger.isInsert && trigger.isBefore) || (trigger.isUpdate && trigger.isAfter) || (trigger.isUpdate && trigger.isBefore))
    {
        mailclasscheck.mailmanager(trigger.new);        
    }
}