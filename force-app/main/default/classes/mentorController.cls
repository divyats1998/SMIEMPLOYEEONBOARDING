public with sharing class mentorController {
    public class CustomException extends Exception {}
    @AuraEnabled(Cacheable=true)
    public static List<User> getContacts() {
        List<User> employee = [select name from User WHERE Profile.Name='New Joinee'];
        
        return (employee);
    }

    @AuraEnabled
    public static Contact saveContact(Contact cont){
        insert (cont);

        return (cont);
    }
}

