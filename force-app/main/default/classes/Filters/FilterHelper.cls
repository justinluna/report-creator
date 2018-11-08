public class FilterHelper {
  public static List<Filter> filters = new List<Filter>();

  static {
    filters.add(new EqualsFilter());
  }

}
