@istest
public with sharing class DoesNotEqualsTest {
    @istest static void executeShouldReturnCorrectStatement() {
      Filter doesNotEqualFilter = new DoesNotEqualFilter();
      System.assertEquals('WHERE Name != \'test\'', doesNotEqualFilter.execute('\'test\'', 'Name'));
    }

     @istest static void getNameShouldReturnNameOfFilter() {
      Filter equalsFilter = new DoesNotEqualFilter();
      System.assertEquals('does not equal', equalsFilter.getName());
    }
}
