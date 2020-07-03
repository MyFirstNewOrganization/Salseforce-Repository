global class jobschedule implements Schedulable
{
    
   global void execute(SchedulableContext SC)
   {
		//List<Job__c> exp = [select id,Name from Job__c where Expires_On__c < today];
       	List<Job__c> j=new List<Job__c>();
       
       	for(Job__c ob: j)
            
        {
            if(ob.Expires_On__c < System.today())
            {
                ob.Status__c=false; 
            }
                      
        }
       
   }
}