public abstract class Filter {

  public String execute(Object expected, Object field) {
    return 'WHERE ' + String.valueOf(field) + getOperator() + valueOf(expected);
  }

  private String valueOf(Object value) {
    if (value instanceOf String) {
     return '\'' + (String) value + '\'';
    }
    return String.valueOf(value);
  }

  abstract public String getName();
  abstract String getOperator();

}
