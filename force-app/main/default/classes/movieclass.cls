public class movieclass
{

    public String getRecords() {
        return null;
    }


    public List<sObject> records{get;set;}

    public List<String> fields{get;set;}

    public movieclass()
    {

        
            
      movie__c mer = new Movie__c(Name='mumma',Hero__c='rajno');

	  List<movie__c> merList = new List<movie__c>();

	  merList.add(mer);

      upsert merList;


    }

}