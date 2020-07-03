public class AccountVFController 
{

    public String getRecords() {
        return null;
    }
    public List<sObject> records{get;set;}

    public List<String> fields{get;set;}

    public AccountVFController()
    {

        records= [select Email_id__c,Name from Student__c];

        fields = new List<String>{'Name','Email_id__c'};

    }

}