public class task4class
{
    public static void t4s(List <Job__c> jobj)
    {
        for(Job__c j: jobj)
        {
            if(j.Hired_Students__c >= j.Number_of_Positions__c)
            {
                j.Status__c =false;
            }
        }
    }

}