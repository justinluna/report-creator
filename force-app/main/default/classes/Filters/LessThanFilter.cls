public  class LessThanFilter extends Filter {
     override public String getName(){
    return 'less than';
  }

  private String getOperator() {
    return ' < ';
  }
}
