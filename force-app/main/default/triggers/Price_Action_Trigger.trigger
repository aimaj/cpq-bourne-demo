trigger Price_Action_Trigger on SBQQ__PriceAction__c (before insert, before update) {
    new Migration_ID_Service();
}