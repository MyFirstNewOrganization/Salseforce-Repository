public class SaveForm 
{
public SaveForm()
{
mo =new Candidate_Yourname__c();  
}
public PageReference saveme()
{
     insert mo;
     return null;
}

public Candidate_Yourname__c mo { get; set; }
    
 
    public list<Candidate_Yourname__c> showList = new list<Candidate_Yourname__c>([select Id,Name,Last_Name__c,Country__c,Email__c,Apply_job__c,Status__c,Date__c,Expected_Payment__c from Candidate_Yourname__c order by createddate desc limit 1]);
    Public list<Candidate_Yourname__c> getshowList()
    {    
        return showList;
    }
}