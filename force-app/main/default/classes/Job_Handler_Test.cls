@isTest
public class Job_Handler_Test 
{
	@isTest public static void handlertest()
    {
        
        List<contact> c1=new List<contact>();
        c1.add(new contact(lastName='panda'));
		insert  c1;
        
        List<Job__c> list1=new List<Job__c>();
        
        list1.add(new Job__c(Name='Android developer',
                 			 Number_of_Positions__c=5,
                 			 Salary_Offered__c=50000,
                 			 Status__c=true,
                 			 Manager__c=c1[0].ID));
        
        list1.add(new Job__c(Name='Php developer',
                 			 Number_of_Positions__c=9,
                 			 Salary_Offered__c=90000,
                 			 Status__c=false,
                 			 Manager__c=c1[0].ID));
        
        Database.insert(list1,true);
       
        
       List<Candidate_Yourname__c> create =new List<Candidate_Yourname__c>();
        for(integer i=0;i<3;i++)
        {
            create.add(new Candidate_Yourname__c(Name='aarti'+i,
                      							Last_Name__c='jibalwad',
                      							Email__c='art@gmail.com',
                      							Expected_Payment__c=50000,
                      							Country__c='India',
                       							City__c='Maharastra',
                       							Date__c=date.newinstance(2019, 10, 10),
                       							Status__c='hired',
                       							Apply_job__c=list1[1].Id)); 								
                      							
        }
        insert create;
        
		 Job__c jb=new Job__c();
         jb =[select Id,Number_of_Positions__c from Job__c where Number_of_Positions__c=9];
         jb.Number_of_Positions__c=6;
        
         update jb;
        
        try
        {
            Delete list1[1];
        }
        catch(Exception e)
        {
}
            
        
        
    }
}