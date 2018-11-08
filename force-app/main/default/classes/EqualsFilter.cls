public class EqualsFilter extends Filter {

  override public String getName() {
    return 'equals';
  }

  private String getOperator() {
    return ' = ';
  }
}
