trigger customerProjecttrigger on Customer_Project__c (After insert, after update) {
     if(Trigger.isAfter){
        if(Trigger.isInsert){
            customerProject.custom(Trigger.new);
        }
    }
}