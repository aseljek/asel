public class customerProject {
    public static void custom (List<Customer_Project__c> newList){
        List<Opportunity> oppList = new List <Opportunity>();
        
        for (Customer_Project__c custom : newList){
            if (custom.Opportunity__c != NULL && custom.Type__c == 'Active'){
                
                    opportunity opp = new opportunity();
                    opp.Id = custom.Opportunity__c;
                    opp.Active_Customer_Project__c = True;
                    oppList.add(opp);
                }
            else {
                opportunity opp = new opportunity();
                opp.Id = custom.Opportunity__c;
                opp.Active_Customer_Project__c = False;
                oppList.add(opp);
            }
        }
       update oppList;      
    }
  
}