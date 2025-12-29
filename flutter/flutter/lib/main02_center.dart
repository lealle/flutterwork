import 'package:flutter/material.dart';
/*
* * Layout
*  - Scaffold() : 화면을 top, body, bottom로 나누어줌
*  - Row() : 위젯들을 가로로 배치
*  - Column() : 윗젯들을 세로로 배치
* */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'),backgroundColor: Colors.grey,),
        body: Center(
          child: Container(
            child: Text('본문 내용'),
          ),

        ),
        // 가로 정렬 어떻게 하는지
        bottomNavigationBar: Container(
          color: Colors.grey,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.stacked_bar_chart),
              Icon(Icons.star_border_outlined),
              Icon(Icons.star_half),
            ],

          )
        ),

      ),


    );
  }
}
