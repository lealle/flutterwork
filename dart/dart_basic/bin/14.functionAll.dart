void main(){
 int result = addNum(10,  20,30);
 print(result);
 int result1 = addNum3(10, b: 20);
 print(result1);
 int result2 = addNum3(20, c: 40, b:50);
 print(result2);
 int result3 = addNum3(20, b: 140, c:250);
 print(result3);
}


// 반환형은 int
// (postion parameter, named parameter, optional parameter)
// 합계

// optional parameter (값이 들어와도 괴고 안들어와도 됨 ) 임
int addNum( int a, int b, int c ){

  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }
  return sum;
}
int addNum3( int a, {required int b, int c = 55}){

  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }
  return sum;
}


