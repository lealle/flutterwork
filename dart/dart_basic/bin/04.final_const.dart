/*
* final / const
*  - 공통점 : 상수 , 자료형을 생략 가능
*  - 차이점 : final 은 build time 을 몰라도 됨
*  - 차이점 : const 은 build time 을 알아야 됨
*  -
* */

void main(){
  final String name1 = 'kim';
  const String name2 = 'hong';

  DateTime now1 = DateTime.now();

  print(now1);
  print(name1);
  print(name2);

  final DateTime now2 = DateTime.now();
  print(now2);

  // 실행될때 시간을 얻어오는건데 build 할때의 시간 알 수 없음
  // 실행될때의 시간 가져올 수 있음
  // const DateTime now3 = DateTime.now();
  // print(now3);







}