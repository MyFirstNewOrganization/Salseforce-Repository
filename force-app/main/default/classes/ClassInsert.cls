public class ClassInsert
{
public ClassInsert()
{
st =new Student__c();  
}
public PageReference insertMe()
{
     insert st;
     return null;
}

public Student__c st { get; set; }
}