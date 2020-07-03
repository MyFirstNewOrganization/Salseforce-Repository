trigger task3 on Job__c (before delete)
{
    if(trigger.isDelete && trigger.isBefore)
    {
        task3class.t3s(trigger.old);
    }
}