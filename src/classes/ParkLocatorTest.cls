@isTest
private class ParkLocatorTest 
{
	@isTest static void testParkLocator() 
    {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String x = 'Japan';
        String[] result = ParkLocator.country(x);
        String[] expected = new List<String> {'Shiretoko National Park', 'Oze National Park', 'Hakusan National Park'};
        // Verify that a fake result is returned
        System.assertEquals(expected, result); 
    }
}