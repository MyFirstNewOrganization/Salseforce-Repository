@isTest
private class TestRes
{
    @isTest static void testInsert()
    {
        Job__c d=new Job__c(Name='INVALID',Manager__c='aarti jibalwad');
        Test.StartTest();
        try
        {
            insert d;
        }
        catch(Exception e)  
        {
      
            Test.StopTest();
        }
    }
}