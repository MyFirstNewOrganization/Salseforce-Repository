trigger candidate_trigger on Candidate_Yourname__c (before insert,After Insert,After Update,Before Update) 
{
    /*
     if(trigger_activatedeactivate__c.getInstance().Trigger_off__c)
     {
         System.debug('bypassing trigger');
         return;
     } 
     else
     {*/
      
     if(trigger.isInsert && trigger.isBefore)
    {
        candiadte_handler.check1(trigger.new);
    }
    
    if(trigger.isInsert && trigger.isAfter)
    {
        candiadte_handler.t2s(trigger.new);
    }
    
    if(trigger.isInsert && trigger.isBefore)
    {
        candiadte_handler.salarytrigger(trigger.new);
    }
     
    
    if(trigger.isUpdate && trigger.isBefore)
    {
       for(Candidate_Yourname__c c1 :Trigger.new)
       {
           if(c1.Status__c=='Hired')
           {
               SendMail.SendToCandidate(c1.Id,c1.Email__c);
           }
       }
        
    }
    
}