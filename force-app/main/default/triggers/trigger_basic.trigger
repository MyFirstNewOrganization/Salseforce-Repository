trigger trigger_basic on Candidate_Yourname__c (Before Insert , Before Update)
{
     for(Candidate_Yourname__c a:Trigger.new)
     {
         if(a.Expected_Payment__c==Null || a.Expected_Payment__c<0)
         {
             a.adderror('Field is necessary or may be u have entered wrong amount');
         }
         
     }
}