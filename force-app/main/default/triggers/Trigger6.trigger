trigger Trigger6 on Job__c (before insert,before delete,before update)
{
 if(trigger.isUpdate && trigger.isBefore)
    {
        trigeer6check.AfterUpdate(trigger.new);
    }
}