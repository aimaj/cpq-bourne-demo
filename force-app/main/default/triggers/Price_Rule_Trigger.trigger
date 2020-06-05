trigger Price_Rule_Trigger on SBQQ__PriceRule__c (before insert, before update) {
    new Migration_ID_Service();
}