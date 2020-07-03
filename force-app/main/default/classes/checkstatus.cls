public class checkstatus
{
	public static void check1(List <Candidate_Yourname__c> jobj)
    {
        List<Job__c> rec=new List<Job__c>([select ID,Name from job__c where Status__c=false]);
    
        for(Candidate_Yourname__c j: jobj)
        {
            for(Job__c r:rec)
            {
                if(String.valueOf(j.Apply_job__c)==r.ID)
                {
                    j.AddError('Cannot apply this job because job is not active');
                }
            }
			
        }
    }  
}