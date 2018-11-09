@IsTest
public class GreaterThanFilterTest {
    @IsTest static void executeShouldReturnCorrectStatement() {
        Filter greaterThanFilter = new GreaterThanFilter();
        System.assertEquals('WHERE Count > 8', greaterThanFilter.execute(8, 'Count'));
    }

    @IsTest static void getNameShouldReturnNameOfFilter() {
        Filter greaterThanFilter = new GreaterThanFilter();
        System.assertEquals('greater than', greaterThanFilter.getName());
    }
}
