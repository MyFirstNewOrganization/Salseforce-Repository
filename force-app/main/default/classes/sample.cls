public class sample 
{
    
    Job__c c=new Job__c();
    
    public Integer position1{get;set;}
     public string nam{get;set;}    
   
    
    public void submt()
    {
           c.Name=nam;
           c.Number_of_Positions__c=position1;
        insert c;
    }  
}