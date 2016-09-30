public with sharing class OpportunityTriggerClass {
	
	static List<task> tskList = new List<Task>();
	static Task tskObj = new Task();

	public static void taskCreation(List<Opportunity> opptList) {
		if(opptList <> NULL && opptList.size()>0){
			for(Opportunity opptObj : opptList){
				tskObj = new Task();
				tskObj.WhatId = opptObj.Id;
				tskObj.Subject = 'Follow Up Test Task';
				tskList.add(tskObj);
			}
		}

		try{
			if(tskList <> NULL && tskList.size()>0){
				insert tsklist;
			}
		}catch(DmlException ex){
			System.debug(ex.getMessage());
		}
		
	}
}