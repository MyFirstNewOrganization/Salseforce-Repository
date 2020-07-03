@isTest
public class jobScTest 
{
  @isTest 
  public static void resultForJob()
    {        
        Contact objContact = new Contact(lastName='jelibeli');
        Insert objContact;
        
        List<Job__c> lstJobCreate = new List<Job__c>();
        
        for(Integer i=0;i<3;i++)
        {
            
            Job__c ob1=new Job__c(Name='consultant Job'+i,
                                        Number_of_Positions__c=5,
                                        Job_Types__c='Manager',
                                        Status__c=true,
                                        Expires_On__c=date.newinstance(2020, 6, 16),
                                        Manager__c=objContact.Id);
            
            lstJobCreate.add(ob1);
            
            
        }
        System.debug('list is'+lstJobCreate);
        insert lstJobCreate;
        //List<Job__c> lstJobCreate = [select id,Name from Job__c limit 3];
         System.debug('list2 is'+lstJobCreate);
        
        // System.debug('2nd'+lstJobCreate);
      
        // Seconds Minutes Hours Day_of_month Month Day_of_week optional_year  
        String sch='0 5 3 18 4 ?';  
        Test.startTest();
        
        String jobId=System.schedule('scheduletestclass', sch, new Jobschedulerondate());
        
        System.assertEquals(3, lstJobCreate.size());
        Test.stopTest();    
    }
  
}