public class namesOfAccount {
    @AuraEnabled
    public static List<sObject> getResults(String objectSearch, String fieldSearch){
        String queryString = 'SELECT ' + fieldSearch + ' FROM ' + objectSearch;
        System.debug(queryString);
        List<sObject> sobjList = Database.query(queryString);
        return sobjList;
    }
}