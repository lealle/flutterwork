void main(){
  /*
  * 집합 자료형 : List, Set, Map
  * - List Type
  *   java의 List와 동일
  * */

  List<String> name = ['홍길동', '제니','이한나'];
  List<int> num1 = [1,2,3];
  print(name);
  print(num1);

  print(name[1]);
  print(name.length);

  name.add('최인영');
  print(name);
  name.remove('최인영');
  print(name);
}