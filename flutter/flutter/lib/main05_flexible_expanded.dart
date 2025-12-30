import 'dart:ui';

import 'package:flutter/material.dart';
/*
*  Flexible() 위젯 : flex 와 비슷
*   : 전체에서 ?% 자리차지 같은 것 사용할 때 편리
*     - Row(), Column()에서 사용
*  Expanded : 나머지 부분 다 자리차지
* */

void main() {
  runApp(const MyApp());
}

// decoration
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 3등분으로 나눌 수 있음
        appBar: AppBar(
          actions: [Icon(Icons.one_x_mobiledata),Icon(Icons.list_alt),Icon(Icons.search)], // 오른쪽
          title: Text('예제'),
          backgroundColor: Colors.grey,),

          body: Row(
            children: [
              Container(width: 100,height: 30, color: Colors.amber,),
              Flexible(child: Container(color: Colors.greenAccent,), flex: 1,),
              Expanded(child: Container(color: Colors.blueAccent,)) // flex 있으면 1의 크기만큼 가짐

            ],


          ),


        // body: Column(
        //   children: [
        //     Flexible(child: Container(color:Colors.red), flex: 3,),
        //     Flexible(child: Container(color:Colors.orange), flex: 3,),
        //     Flexible(child: Container(color:Colors.blueAccent), flex: 3,),
        //     Expanded(child: Container(color:Colors.green)),
        //
        //   ],
        // ),
      ),
    );
  }
}
