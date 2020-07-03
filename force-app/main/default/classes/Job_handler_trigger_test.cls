@isTest public class Job_handler_trigger_test
{
   @isTest public static void jobhandler()
    {
    
        Contact objContact = new Contact(lastName='jelibeli');
        Insert objContact;
        
    
       	List<Job__c> lstJobCreate = new List<Job__c>();
        
        lstJobCreate.add(new Job__c(Name='ManagerJob',
                                           Number_of_Positions__c=5,
                                           Job_Types__c='Manager',
                                           	Status__c=false,
                                           	Manager__c=objContact.Id));

        lstJobCreate.add(new Job__c(Name='Developer',
                                           Number_of_Positions__c=5,
                                           Job_Types__c='Manager',
                                           Status__c=true,
                                           Manager__c=objContact.Id));
        Database.insert(lstJobCreate, false);
 
        
        List<Candidate_Yourname__c> candidateCreate = new List<Candidate_Yourname__c>();
        candidateCreate.add(new Candidate_Yourname__c(Name='Arti',Last_Name__c='jibalwad',
                                                    Email__c = 'arti@gmail.com',Country__c ='India',
                                                    City__c = 'Maharashtra',Expected_Payment__c=-1,
                                                    Status__c='Applied',Apply_job__c=lstJobCreate[0].Id));
        
        candidateCreate.add(new Candidate_Yourname__c(Name='Abhi',Last_Name__c = 'jibal',
                                                    Email__c = 'antara@gmail.com',Country__c = 'India',
                                                    City__c = 'Maharashtra',Expected_Payment__c=2000,
                                                    Status__c='Applied',Apply_job__c=lstJobCreate[1].Id));
       
        Database.insert(candidateCreate, false);
      
    }
   
}