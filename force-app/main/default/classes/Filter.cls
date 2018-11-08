public abstract class Filter {

  public String execute(String expected, String field) {
    return 'WHERE ' + field + getOperator() + expected;
  }

  abstract public String getName();
  abstract String getOperator();

}
