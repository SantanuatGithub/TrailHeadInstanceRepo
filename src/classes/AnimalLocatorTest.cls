@isTest
private class AnimalLocatorTest{
	
	@isTest static void testGETCallout() {
		Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
		String animalName = AnimalLocator.getAnimalNameById(1);


	}
	
	
}