public class Migration_ID_Service{

    //return different external id field names here, depending on objectType value
    protected String EXTERNAL_ID_FIELD{
        get{
            return 'Migration_Id__c';
        }
    }
 
    public Migration_ID_Service() {
        if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
            JSON.MigrationIdService.addMigrationId(Trigger.new, EXTERNAL_ID_FIELD);
        }
    }
 
}