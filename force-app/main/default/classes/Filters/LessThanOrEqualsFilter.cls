public class LessThanOrEqualsFilter extends Filter {
  override public String getName() {
    return 'less than or equals';
  }

  private String getOperator() {
    return ' <= ';
  }
}
