@RestResource(urlMapping='/account/*')
global with sharing class AccountManager  {

    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        String accountId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Account result =  [SELECT Id,
                                  Name
                                  FROM Account
                                  WHERE Id = :accountId];
        return result;

    }

    @HttpPost
    global static Account create() {

        Account obj;

        return obj;

    }

    @HttpPut
    global static Account updateObject() {

        Account obj;

        return obj;

    }

    @HttpDelete
    global static void remove() {

    }

}