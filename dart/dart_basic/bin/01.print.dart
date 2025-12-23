/*
*
* 자료형
* 1. bool(boolean이 아님) && , || 다 됨
* 2. int (int / int -> double )
* 3. double(float 없음)
* 4. String : "" , '' 모두 가능
* 5. Null : null 형만 가능
* 6. print (같은 자료형만 넣을 수 있음 )
*
* */


void main(){
  // 자료형 
  var name = 'kim';
  var num = 5;

  // 자료형 출력
  // print(name + name.runtimeType); 자료형이 같지 않아 문제 발생
  print(num.runtimeType);

  // 자료형이 다를때는 따음표를 반드시 넣어야함
  print(name + '${num}');
  print('${name}' + '${num}');
  print('${name}'  '${num}');

  // 중괄호 생략 가능 문서에서도 권장
  print('$name $num');

  // 중괄호 생략 불가능한 상황
  print('$num.runtimeType $num');
  print('${num.runtimeType} $num');






}