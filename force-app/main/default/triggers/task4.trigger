trigger task4 on Job__c (after insert,before update,before delete)
{
    if((trigger.isUpdate || trigger.isInsert) && trigger.isBefore)
    {
        task4class.t4s(trigger.new);
    }
}