import 'dart:ui';

import 'package:flutter/material.dart';
/*
  * SizeBox() : 간단한 박스
  * - 속성 : width, height, child 3개만 있음
  *   > 많은 속성이 필요한 경우 Container 사용
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
        appBar: AppBar(title: Text('예제'),backgroundColor: Colors.grey,),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            // decoration & color 같이 쓸 수 없음
            // 전체색상 - decoration 색상 충돌 - 어떤걸로 해야할지 모름 중복방지
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.cyan
            ),
            padding: EdgeInsets.all(20),
            child: IconButton(onPressed: (){
              
            },
              icon:Icon(
                Icons.eighteen_mp,
                size: 100,
                color: Colors.purple,
              ) ),



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
