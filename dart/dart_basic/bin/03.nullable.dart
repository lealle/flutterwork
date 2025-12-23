/*
  *   Null satety 타입 : 2.12버전부터 도입
  *  - 기본값 초기화 없임 선언하는 변수는 null 값에 대한 안정성을 보장하기 위해 타입을 모든
  *    변수는 non-nullable, nullable 로 구분해줘야함
  *  1. nullable type : null 을 허용하는 타입
  *     > 자료형 뒤에 ? 를 붙여 사용
  * 2. non-nullable : null 을 허용하지 않는 타입
  *     > 아무것도 붙이지 않으면 non - nullable
  *
 */

void main(){
  String name = 'kim';
  print(name);
  // name - null ; // 오류 non-nullable 타입

  String? name2 = 'ji'; // 자료형 옆에 ? 를 넣으면 null 을 넣을 수 있음
  name2 = null;
  print(name2);

  int? num = 5; // 자료형 옆에 ? 를 넣으면 null 을 넣을 수 있음
  num = null;
  print(num);

  // 1 : nullable type 으로 선언했을 때 변수 뒤에 ! 를 붙여서
  //      null 인 경우 오류를 발생하도록 만듬
  //      - 변수명에 !를 붙이면, non-nullable의 타입이라는 뜻 (print시 사용)
  // print(num!); //! 붙이면 null 일시 받을 수 없음 // 오류 발생

  int? num3;
  num3 = 3;
  print(num3!);
  num3 = null;
  // print(num3!);

  int? num4;
  int num5 = 3;
  // print(num4 + num5); // 타입이 달라 생긴 오류 num4 널이기에 연산 불가
  // print(num4! + num5); // 실행시 null 오류 발생
  print (num4 ?? 5); // null 일시 ?? 뒤에 있는걸로 대체하라
  print ((num4 ?? 7) + num5); // 햇갈릴 수 있으니 보통 () 처리 함

  // if 문을 null safety를 이용하여 ?. 으로 사용할 수 있음
  String? name4 = "john";

  // if 구문
  if(name4 != null){
    print(name4.isNotEmpty);
  }

  // ?. 구문
  // null 이면 null 출력 아니면 비어있는가 아닌가로 true false 출력
  print(name4?.isEmpty);
  print(name4?.isNotEmpty);

  name4 = null;
  print(name4?.isEmpty);
  print(name4?.isNotEmpty);

}