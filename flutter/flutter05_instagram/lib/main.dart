import 'package:flutter/material.dart';

/*
* 스타일을 한곳에
* ThemeData() : 스타일을 모아놓음 (<style></style>)
  - 같은 파일에 넣어도 되고 별도의 파일로 만들어  
* * */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),


    );
  }
}


