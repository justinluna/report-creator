@IsTest
public class LessThanFilterTest {

  @IsTest
  static void executeShouldReturnCorrectStatement(){
    Filter lessThanFilter = new LessThanFilter();
    test.startTest();
    System.assertEquals('WHERE Count < 8', lessThanFilter.execute(8, 'Count'));
    test.stopTest();
  }

  @IsTest static void getNameShouldReturnNameOfFilter(){
    Filter lessThanFilter = new LessThanFilter();
    test.startTest();
    System.assertEquals('less than', lessThanFilter.getName());
    test.stopTest();
  }

}
