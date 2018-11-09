public abstract class Filter {

  public String execute(Object expected, Object field) {
    return 'WHERE ' + String.valueOf(field) + getOperator() + String.valueOf(expected);
  }

  abstract public String getName();
  abstract String getOperator();

}
