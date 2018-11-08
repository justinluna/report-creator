@istest
public class FilterHelperTest {
  @istest static void filtersShouldHaveSizeOfOne() {
    System.assertEquals(1, FilterHelper.filters.size());
  }
}
