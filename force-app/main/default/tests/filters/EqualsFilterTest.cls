@istest
public class EqualsFilterTest {
    @istest static void executeShouldReturnCorrectStatement() {
      Filter equalsFilter = new EqualsFilter();
      System.assertEquals('WHERE Name = \'test\'', equalsFilter.execute('test', 'Name'));
    }

    @istest static void getNameShouldReturnNameOfFilter() {
      Filter equalsFilter = new EqualsFilter();
      System.assertEquals('equals', equalsFilter.getName());
    }
}
