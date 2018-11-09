public class DoesNotEqualFilter extends Filter {
  override public String getName(){
    return 'does not equal';
  }

  private String getOperator() {
    return ' != ';
  }
}
