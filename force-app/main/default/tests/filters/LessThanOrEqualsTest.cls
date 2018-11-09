@IsTest
public class LessThanOrEqualsTest {
    @IsTest static void executeShoulReturnCorrectStatement(){
      Filter lessThanOrEqual = new LessThanOrEqualsFilter();
      test.startTest();
      System.assertEquals('WHERE Count <= 8', lessThanOrEqual.execute(8, 'Count'));
      test.stopTest();
    }

    @IsTest static void getNameShouldReturnNameOfFilter(){
      Filter lessThanOrEqual = new LessThanOrEqualsFilter();
      test.startTest();
      System.assertEquals('less than or equals', lessThanOrEqual.getName());
      test.stopTest();
    }
}
