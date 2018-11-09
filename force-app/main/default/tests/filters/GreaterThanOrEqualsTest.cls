@IsTest
public class GreaterThanOrEqualsTest {
  @IsTest
  static void executeShouldReturnCorrectStatement(){

    Filter GreaterThanOrEquals = new GreaterThanOrEquals();
    test.startTest();
    System.assertEquals('WHERE Count >= 8', doesNotEqualFilter.execute(8, 'Count'));
    test.stopTest();
  }

  @IsTest static void getNameShouldReturnNameOfFilter() {
        Filter greaterThanFilter = new GreaterThanFilter();
        System.assertEquals('greater than or equals', greaterThanFilter.getName());
  }

}
