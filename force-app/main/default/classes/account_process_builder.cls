public class account_process_builder
{
      public class Request
      {

        @InvocableVariable
        public Id accountId;

        @InvocableVariable

        public Id contactId;
      }

     @InvocableMethod(label='Get Account Address' description='update contact address with acconnt address')

        public static void updateContact(List<Request> ids) 
      {
        System.debug('*****Process builder output- accountId:' + Ids.get(0).accountId);
        System.debug('*****Process builder output- contactId:' + Ids.get(0).contactId);

        Account acc = [select ShippingCity, ShippingCountry, ShippingState, ShippingStreet, ShippingPostalCode from Account where id = :ids.get(0).accountId];
        Contact c = [select MailingCity, MailingCountry, MailingState, MailingStreet, MailingPostalCode from Contact where id = :ids.get(0).contactId];

        c.MailingCity = acc.ShippingCity;
        c.MailingStreet = acc.ShippingStreet;
        c.MailingState = acc.ShippingState;
        c.MailingCountry = acc.ShippingCountry;
        c.MailingPostalCode = acc.ShippingPostalCode;

        update c;
          
        Contact m=[select Email,FirstName from Contact where id=: ids.get(0).contactId];
          
          List<Messaging.SingleEmailMessage> mails=new List<Messaging.SingleEmailMessage>();
          Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
          List<String> send=new List<String>();
          send.add(m.Email);
          mail.setSenderDisplayName('arti jibalwad');
          mail.setToAddresses(send);
          mail.setSubject('alert of address filled');
          String body ='hello'+m.FirstName+'your address is filled/changed as per account address';
          mail.setHtmlBody(body);
          mails.add(mail);
          Messaging.sendEmail(mails);
    
    }

}