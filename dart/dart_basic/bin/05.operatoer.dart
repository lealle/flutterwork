/*
* 기존 프로그램과 동일
* 다른것
* 몫을 구할때 int / int -> double (자동변환)
* 몫 : ~/
*  ??= : 만약 값이 null 이면 오른쪽에 있는 값을 변수에 저장하고
*         null이 아니면 왼쪽값을 저장
* */

void main(){
  int num1 = 8;
  int num2 = 2;
  // int result = num1/num2;
  double result = num1/num2; // int/int -> double

  print(result);
  
  int num3 = 3;
  print('몫 : ${num1~/num3}');

  int? num4;

  num4 ??= 5; // num4 null이기에 5의 값을 넣음
  print(num4);

  num3 ??= 10;
  print(num3);

  num4 ??= 20; // num4 가 5들어가있는 상태라 5
  print(num4);

  /*
  * ? : 자료형에 붙여줌
  * ?? : 변수에 붙여줌. null일때 기본값 제공 (원본 안바뀜)
  * ??= : 변수에 붙여줌. 변수에 값을 저장 (null이면 오른쪽의 값을 그렇지 않으면 왼쪽의 값을)
  *
  *
  * */

}