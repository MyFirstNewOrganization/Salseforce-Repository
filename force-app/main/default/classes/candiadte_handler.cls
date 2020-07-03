public class candiadte_handler
{
	public static void check1(List <Candidate_Yourname__c> jobj)
    {
        Map <ID,Job__c> mapj =new Map<Id,Job__c>([select Id,Name,Status__c from Job__c where Status__c!=true]);
    
        for(Candidate_Yourname__c j: jobj)
        {
                if(mapj.containsKey(j.Apply_job__c))
                {
                    j.AddError('Cannot apply this job because job is not active');
                }
            }
        }  
        
    public static void t2s(List <Candidate_Yourname__c> canob)
    {
		List<Candidate_Yourname__c>  c=new List<Candidate_Yourname__c>();
	//	List<Candidate_Yourname__c> h=new List<Candidate_Yourname__c>(select CreatedDate from Candidate_Yourname__c);
	      
			for(Candidate_Yourname__c ob : canob)
        	{  
            Candidate_Yourname__c c1=new Candidate_Yourname__c();
                //we set Id of full list to empty list object
                //object is full c1 is empty here
            c1.ID=ob.ID;
            c1.Date__c=ob.CreatedDate.Date();
            c.add(c1);
        	}
        update(c);
    }
     
    
    public static void salarytrigger(List <Candidate_Yourname__c> jobj)
    {
    	for(Candidate_Yourname__c j: jobj)
        {
             if(j.Expected_Payment__c==Null || j.Expected_Payment__c<0)
         		{
             		j.addError('Field is necessary or may be u have entered wrong amount');
         		}   
        }
    }
}