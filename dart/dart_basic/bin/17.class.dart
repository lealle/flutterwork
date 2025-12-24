class Idol {
  String name = '블랙핑크';
  List<String> members = ['jisu', 'jenny', 'lisa', 'roze'];

  sayHello(){
    print('hello');
  }

  introduce(){
    print('we are blackpink');
  }
}

void main(){
  Idol blackpink = Idol();

  print(blackpink.name);
  print(blackpink.members);
  print(blackpink.sayHello());
  print(blackpink.introduce());

}