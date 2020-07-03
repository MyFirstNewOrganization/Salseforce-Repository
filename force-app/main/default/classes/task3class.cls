public class task3class
{
public static void t3s(List <job__c> jobj)
    {
        for(job__c j: jobj)
        {
            if(j.Status__c)
            {
                j.addError('cannot delete this job');
            }
        }
    }
}