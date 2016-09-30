public with sharing class AccountTriggerClass {
	
	public void updateShippingAddress(List<Account> acctList){
		if(acctList <> NULL && acctList.size()>0){
			for(Account acctObj : acctList){
				if(acctObj.Match_Billing_Address__c){//} && acctObj.BillingPostalCode <> NULL){
					acctObj.ShippingPostalCode = acctObj.BillingPostalCode;
				}
			}
		}
	}
}