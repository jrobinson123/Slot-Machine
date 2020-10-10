int roundDouble(double x){
  int beforeDecimal = (int)x;
  double afterDecimal = x - (beforeDecimal);
  if(afterDecimal >= 0.5){
    return beforeDecimal +1;
  }else{
    return beforeDecimal;
  }
}
