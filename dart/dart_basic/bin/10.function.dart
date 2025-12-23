void main(){
  addNumbers();
  addNumbers1(10,20,30); // 합계는 짝수 합계는 홀수

}

// void 생략가능
addNumbers(){
  print('addNumbers 실행');
}

addNumbers1(int a, int b, int c){
  if((a+b+c)%2 == 0 ){
    print('합계는 짝수');
    print('$a + $b + $c = 짝수');
  }else{
    print('합계는 홀수');
    print('$a + $b + $c = 홀수');
  }
}




