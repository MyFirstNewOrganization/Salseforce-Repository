trigger Job_trigger on Job__c (before insert,before update, before delete, after insert)
{
	if(trigger.isDelete && trigger.isBefore)
    {
        Job_handler.t3s(trigger.old);
    }
    
    if((trigger.isUpdate || trigger.isInsert) && trigger.isBefore)
    {
        Job_handler.t4s(trigger.new);
    }
    
    if(trigger.isUpdate && trigger.isBefore)
 	{
        Job_handler.AfterUpdate(trigger.new);
	}

}