@IsTest
public class GreaterThanOrEqualsTest {
  @IsTest
  static void executeShouldReturnCorrectStatement(){
    Filter greaterThanOrEquals = new GreaterThanOrEqualsFilter();
    System.assertEquals('WHERE Count >= 8', greaterThanOrEquals.execute(8, 'Count'));
  }

  @IsTest static void getNameShouldReturnNameOfFilter() {
        Filter greaterThanOrEquals = new GreaterThanOrEqualsFilter();
        System.assertEquals('greater than or equals', greaterThanOrEquals.getName());
  }

}
