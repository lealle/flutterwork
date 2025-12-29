import 'dart:ui';

import 'package:flutter/material.dart';
/*
* container 정리
* margin, padding, 정렬위젯 (Align())
* */

void main() {
  runApp(const MyApp());
}

// margin, padding 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'),backgroundColor: Colors.grey,),
        body: Container(
          width: 100,
          height: 100,
          color: Colors.cyan,
          margin: EdgeInsets.all(20),
          // margin: EdgeInsets.fromLTRB(200,100,100,200),
          // margin: EdgeInsets.only(top: 250),
          // margin: EdgeInsets.zero,
          padding: EdgeInsets.all(20),
          child: Text('hi'),
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
