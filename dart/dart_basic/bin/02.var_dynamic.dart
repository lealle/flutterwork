/**
*  1. var 타입 : 처음 들어온값이 type이 됨 type이 정해지면 바꿀 수 없다
*  2. dynamic 타입 : 처음 들어온값이 type이 됨 type이 정해져도 바꿀 수 있다
 */
void main(){
  var name1 = 'kim';
  dynamic name2 = 'lee';

  name1 = 'gil';
  name2 = 'hong';
  print(name1);
  print(name2);

  // name1 = 5; type 바꿀 수 없음
  name2 = 5;
  print(name1);
  print(name2);

  dynamic bool1 = true;
  print(bool1);

  bool1 = false;
  print(bool1);
  bool1 = 'true';
  print(bool1);
  bool1 = 67;
  print(bool1);
  


}