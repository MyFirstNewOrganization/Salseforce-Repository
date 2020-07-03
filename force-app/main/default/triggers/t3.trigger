trigger t3 on Account (before insert,before update)
{
        for(Account obj: Trigger.New)
        {
            if(obj.price__c!=null && obj.price__c!=0)
            {
                Decimal discount=obj.price__c*(obj.discount__c/100);
                  obj.finalprice__c=obj.price__c-discount;
              
            }
        }
}