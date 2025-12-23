// named parameter: 변수 이름 명시로 파라미터 순서가 필요없다.
void main(){
addNum1(a: 10, b: 20, c: 30);
addNum1(b: 20, a: 100, c: 500);
print('-------------------------');
addNum2(10, a: 20, c: 30);
addNum3(a: 45, b: 35);
addNum3(a: 45, b: 35, c:20);
}

addNum1({required int a, required int b,required int c}){
  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }

}


addNum2(int b, {required int a, required int c}){
  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }

}

// optional parameter (값이 들어와도 괴고 안들어와도 됨 ) 임
addNum3( {required int a, required int b, int c = 55}){

  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }

}


