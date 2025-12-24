/*
* private : _(언더바스코어)를 붙이면 private임
* class 에 _(언더바스코어) 를 붙이면 현재 파일에서만 실행 가능 다른곳에서  import 해서 사용불가
* 변수나 함수 앞에 붙여도 동일
* */
class _Idol {
  final String _name;
  final List<String> _members;

  _Idol(this._name, this._members);

  _Idol.fromList(List values)
      : this._members = values[0],
        this._name = values[1];

  _sayHello() {
    print('안녕하세요 $_name 입니다');
  }

  _introduce() {
    print('저희 멤버는 $_members 입니다');
  }

  // getter
  String get firstMember {
    return _members[0];
  }

  // setter - 파라미터 한개만 받을 수 있음
  set firstMember(String name) {
    this._members[0] = name;
  }


}

void main(){
  _Idol idol1 = _Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  String mem1 = idol1.firstMember;
  print(mem1);

  _Idol idol2 = _Idol.fromList([['정국','뷔','지민','진'], 'BTS']);

  print(idol1.firstMember);
  print(idol2.firstMember);

  // settet 함수처럼 쓰이지만 변수로 사용
  // idol1.firstMember(변수) 이런식으로 쓰면 올 발생
  idol1.firstMember = 'suga';
  idol2.firstMember = 'nina';

  print(idol1.firstMember);
  print(idol2.firstMember);
// List 가 아닌 일반변수(int String) 일 시

  idol2._sayHello();


}

