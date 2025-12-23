// optional parameter : 있어도 되고 없어도 되는 파라미터. 대괄호를
void main(){
  addNumbers1(10, 20);
  addNumbers2(10, 20);
}
// 방법1
addNumbers1(int a, [int? b, int? c]){ // non-nullable 타입이기에 ? 를 붙여줌
  b??= 0;
  c??= 0;
  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }
}
// 방법2
addNumbers2(int a, [int b =1, int c =1]){ // non-nullable 타입이기에 ? 를 붙여줌
  b??= 0;
  c??= 0;
  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }
}