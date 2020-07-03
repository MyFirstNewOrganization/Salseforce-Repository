public class SendEmail 
{    
    @RemoteAction
    public static string SendToCandidate(String sEmailAddress, String Candidate_YournameID)
    {
        String sMessage='';
        try{            
            Messaging.SingleEmailMessage semail = new Messaging.SingleEmailMessage();
            Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
            // Replace Visualforce(AccountDetails) page with your visualforce page
            PageReference pref = page.CandidateDetailPDF;
            pref.getParameters().put('id',Candidate_YournameID);
            pref.setRedirect(true);
            Blob b = pref.getContent();
            attach.setFileName('Candidate Details.pdf');
            attach.setBody(b);
            semail.setSubject('Candidate Details');
            semail.setToAddresses(new List<String>{sEmailAddress});
            semail.setPlainTextBody('Please find the attached candidate details');
            semail.setFileAttachments(new Messaging.EmailFileAttachment[]{attach});
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{semail});
            sMessage='SUCCESS';
        }
        catch(Exception ex){
            sMessage=ex.getMessage()+'\n'+ex.getLineNumber()+'\n'+ex.getCause();
        }
        return sMessage;
    }
 }