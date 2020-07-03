public class Job_handler 
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
    
    public static void t4s(List <Job__c> jobj)
    {
        for(Job__c j: jobj)
        {
            if(j.Hired_Students__c >= j.Number_of_Positions__c)
            {
                j.Status__c =false;
            }
        }
    }
    
     public static void AfterUpdate(List <Job__c> obj)
    {
        for(Job__c obj1 : obj)
        {
            if(Obj1.Hired_Students__c < Obj1.Number_of_Positions__c && Obj1.Status__c == False)
            {
         	   Obj1.Status__c = True;        
        	}
        }
    }
    
   
    
    
}