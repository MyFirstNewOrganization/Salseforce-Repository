@isTest
private class testcalc
{
    static testmethod void myTest()
    {
        Account acc=new Account();
        acc.Name='Test Account';
        acc.price__c=2356558;
        acc.discount__c=10.00;
        
        insert acc;
    }
}