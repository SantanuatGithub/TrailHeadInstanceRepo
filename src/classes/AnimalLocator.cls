public with sharing class AnimalLocator {
    
    static String HTTPENDPOINT = 'https://th-apex-http-callout.herokuapp.com/animals/';
    static String animalName = null;

    public static String getAnimalNameById(Integer Id){
        HTTPENDPOINT = HTTPENDPOINT + Id;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(HTTPENDPOINT);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 200){
            JSONParser parser = JSON.createParser(response.getBody());
            while (parser.nextToken() <> NULL){
                if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText() == 'name'){
                    parser.nextToken();
                    animalName = parser.getText();
                    System.debug('animalName--->'+animalName);
                    break;
                }
            }
            
        }
        else
            System.debug('FAULT RESPONSE----->'+response);
        
        return animalName;
    }
}