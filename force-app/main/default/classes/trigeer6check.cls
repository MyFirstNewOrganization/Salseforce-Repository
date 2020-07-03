public class trigeer6check 
{
    public static void AfterUpdate(List <Job__c> obj)
    {
        for(Job__c obj1 : obj)
        {
            if(Obj1.Hired_Students__c < Obj1.Number_of_Positions__c && Obj1.Status__c == False)
            {
         	   Obj1.Status__c = True;        
        	}
        }
    }

}