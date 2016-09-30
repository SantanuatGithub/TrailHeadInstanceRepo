trigger AccountAddressTrigger on Account (before insert, before update) {

	List<Account> accountList = new List<Account>();

	for(Account accObj : trigger.new){
			accountList.add(accObj);
	}

	if((trigger.isInsert||trigger.isUpdate) && trigger.isBefore){
		AccountTriggerClass accttgrclsObj = new AccountTriggerClass();
		accttgrclsObj.updateShippingAddress(accountList);
	}

}