trigger ConsultantTrigger on Consultant__c (before delete, after insert) {
    if(Trigger.isBefore){
        if(Trigger.isDelete){
            //check the logic before delete
            ConsultantTriggerHandler.onBeforeDelete(Trigger.old);
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            //check the logic for after insert
            ConsultantTriggerHandler.onAfterInsert(Trigger.new);
        }
    }

}