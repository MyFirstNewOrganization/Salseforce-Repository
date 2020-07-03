public class SendMail
{   
    @future(callout=true)
    
    public static void SendToCandidate(String Id, String Email)
    {
        
            Messaging.SingleEmailMessage emailtosend = new Messaging.SingleEmailMessage();
      
            // Replace Visualforce(AccountDetails) page with your visualforce page
            PageReference pref = page.CandidateDetailPDF;
            pref.getParameters().put('Id',Id);
            pref.setRedirect(true);
        	Attachment attach=new Attachment();
            Blob b;
        	b=pref.getContent();
            attach.Body=b;
        	attach.Name='name';
       		 attach.IsPrivate=false;
        	attach.parentId=Id;
        		insert attach;
        
        
        Messaging.EmailFileAttachment ef=new  Messaging.EmailFileAttachment();
        ef.setFileName('candidate details.pdf');
        ef.setBody(b);
        List<String> EmailMembers=new List<String>();
        EmailMembers.add(Email);
        
        emailtosend.setToAddresses(EmailMembers);
        emailtosend.setSubject('change status to hired');
        emailtosend.setHtmlBody('body');
        emailtosend.setFileAttachments(new Messaging.EmailFileAttachment[] {ef});
        Messaging.SendEmailResult[] r1= Messaging.sendEmail(new Messaging.SingleEmailMessage[]{emailtosend});
        
    }
    
    public static void attachPDF(Candidate_Yourname__c can, String b)
    {
        try
        {
            Attachment attachmentPDF = new Attachment();
            attachmentPDF.parentId = can.Id;
            attachmentPDF.Name = can.Name + '.pdf';
            attachmentPDF.body = Blob.toPDF(b); //This creates the PDF content
            insert attachmentPDF;
        }catch(Exception e)
        {
            can.addError(e.getMessage());
        }
    }
   
}