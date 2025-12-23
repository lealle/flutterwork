// positional parameter : 순서를 지키는 파라미터
void main(){
  addNumbers1(10,20,30); 
}

addNumbers1(int a, int b, int c){
  int sum = a+b+c;
  if((a+b+c)%2 == 0 ){

    print('합계는 짝수');
    print('$a + $b + $c = $sum');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = $sum');
  }
}




