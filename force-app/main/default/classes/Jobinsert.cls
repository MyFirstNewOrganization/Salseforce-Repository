/*public class Jobinsert {

    public String getJname() {
        return null;
    }

}*/
public class Jobinsert 
{
    public Job__c JName {get; set;}
    public Jobinsert()
    {
         Id id = ApexPages.currentPage().getParameters().get('id');
         JName= (id==null)?new Job__c():[select Description__c,Number_of_Positions__c,Expires_On__c,Status__c,Salary_Offered__c,Manager__c,Total_Applicants__c,Hired_Students__c,Required_Skills__c,Certification_Required__c from Job__c where id=:id];  
    }
    public PageReference insertMe()
    {
        upsert(JName);
        return null;
    }
   
}