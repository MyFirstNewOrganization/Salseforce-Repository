public class mailclasscheck 
{
	public static void mailmanager(List <Job__c> obj)
    {
        List<Messaging.SingleEmailMessage> mails =new List<Messaging.SingleEmailMessage>();
        
        for(Job__c obj1 : obj)
        {
			if(obj1.Hired_Students__c == obj1.Number_of_Positions__c)
            {
                  Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
                  List<String> sendTo = new List<String>();
                  sendTo.add(obj1.Manager_email__c);
                  mail.setToAddresses(sendTo);
                  mail.setSubject('Hiring Information');
                  String body = 'All the required candidate has been hired for this job on ' + obj1.LastModifiedDate.date();
                  mail.setHtmlBody(body);
                  mails.add(mail);
            }
        }
                Messaging.sendEmail(mails);
    }
}