global with sharing class JobOverrideClass
{
      public JobOverrideClass(ApexPages.StandardController controller)
      {

      }

     @RemoteAction
     global static list<Job__c> getcon()
     {     
     	 List<Job__c> canob=new List<Job__c>([select Id,Name,Number_of_Positions__c from Job__c]);
		 List<Job__c> c=new List<Job__c>();
      

		for(Job__c ob : canob)
		{  
            Job__c c1=new Job__c();
            c1.ID=ob.ID;
            c1.Number_of_Positions__c=ob.Number_of_Positions__c+1;
            c.add(c1);
		}
  		update c;
        return c;
    }
     
}