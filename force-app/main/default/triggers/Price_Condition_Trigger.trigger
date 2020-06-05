trigger Price_Condition_Trigger on SBQQ__PriceCondition__c (before insert, before update) {
    new Migration_ID_Service();
}