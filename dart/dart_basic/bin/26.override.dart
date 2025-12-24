class TimeTwo{
  final int num;
  TimeTwo(this.num);

  int calculate(){
    return num*2;
  }
}
class TimeThree extends TimeTwo{
  // TimeThree(int num) : super(num);
  TimeThree(super.num);

  @override
  int calculate(){
    // 1. 부모의 num 값 호출
    // return super.num*5;

    // 2. 부모의 메소드 호출
    return super.calculate()*2;
  }
}

class Employee {
  static String? building; // static 붙은건 null 값 들어갈 수 있기에 변환
  String name;

  Employee(this.name);

  void printName(){
    print('제 이름은 $name 입니다. $building 에서 근무하고 있습니다.');
  }
  static void printBuilding(){
    // print('제 이름은 $name 입니다. $building 에서 근무하고 있습니다.');
    // 전역에서 사용할 수 있어야하는데 name 이라는 지역변수가 있어서

    print('$building 에서 근무하고 있습니다.');
    // 전역변수 전역함수
  }

}

