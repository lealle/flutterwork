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
        appBar: AppBar(title: Text('예제'),backgroundColor: Colors.grey,),

        body: SizedBox(
          // 버튼 TextButton(), IconButton(), ElevatedButton()
          // child: TextButton(onPressed: (){}, child: Text('hihihi', style: TextStyle(fontSize: 150),)),
          // child: ElevatedButton(onPressed: (){}, child: Text('ElevatedButton')), // 그림자효과

          child: IconButton(onPressed: (){
              // 클릭시 실행할 코드
            
          }, icon: Icon(
            Icons.face_2_outlined,
            size: 150,
            color: Colors.purple,
          )),


        // Icon 의 경우 그냥 추가하면 됨 
          // child: Icon(
          //   Icons.e_mobiledata_rounded,
          //   color: Color(0xffe64a4a),
          //   size: 350,// 기본사이즈 24
          // ),
          
          // TextStyle 을 활용한
          // child: Text('hello',
          //   style: TextStyle(
          //       fontSize: 70,
          //       fontWeight: FontWeight.w700,
          //       fontStyle: FontStyle.italic,
          //       color: Color(0xffd740e3),
          //
          // ),),
        ),
      ),


    );
  }
}
