public class task2class 
{
public static void t2s(List <Candidate_Yourname__c> jobj)
    {
        for(Candidate_Yourname__c j: jobj)
        {
            if(j.Date__c!=j.CreatedDate.date())
            {
                j.addError('check your date');
            }
        }
    }
}