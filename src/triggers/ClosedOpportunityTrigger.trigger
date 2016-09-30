trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

	List<Opportunity> opportunityList = new List<Opportunity>();

	for(Opportunity opptObj : trigger.new){
			if(opptObj.StageName == 'Closed Won')
				opportunityList.add(opptObj);
	}

	if((trigger.isInsert||trigger.isUpdate) && trigger.isAfter){
		OpportunityTriggerClass.taskCreation(opportunityList);
	}

}