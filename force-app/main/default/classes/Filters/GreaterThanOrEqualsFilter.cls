public class GreaterThanOrEqualsFilter extends Filter{
  override public String getName(){
    return 'greater than or equals';
  }

  private String getOperator() {
    return ' >= ';
  }
}
