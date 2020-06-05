trigger Lookup_Query_Trigger on SBQQ__LookupQuery__c (before insert, before update) {
    new Migration_ID_Service();
}