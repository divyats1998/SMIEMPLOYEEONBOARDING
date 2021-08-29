public with sharing class mangerController {
    public class CustomException extends Exception {}
    @AuraEnabled(Cacheable=true)
    public static List<User> getContacts() {
        List<User> contacts = [select name from User WHERE Profile.Name='Mentor'];
        
        return (contacts);
    }

    @AuraEnabled
    public static Contact saveContact(Contact cont){
        insert (cont);

        return (cont);
    }
}
