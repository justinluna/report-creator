public class GreaterThanOrEquals extends Filter{
  override public String getName(){
    return 'greater than or equals';
  }

  private String getOperator() {
    return ' <= ';
  }
}
