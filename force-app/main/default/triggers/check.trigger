trigger check on Candidate_Yourname__c (before insert,after insert)
{
    if(trigger.isInsert && trigger.isBefore)
    {
        checkstatus.check1(trigger.new);
    }
}