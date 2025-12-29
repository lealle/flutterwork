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
      // home: Scaffold(
      //   // body: Container(
      //   //   child: Icon(Icons.adb),
      //   // )
      //
      //   // 가로 정렬 어떻게 하는지
      //   body: Row(
      //     // 메인축 정렬
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     // 메인의 반대축 정렬
      //     // -안되는 이유  아이콘의 높이만큼만 자리차지하기 때문에 지금은 잘 안보임
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.stretch, // 이거는 됨
      //
      //     children: [
      //       Icon(Icons.stacked_bar_chart),
      //       Icon(Icons.star_border_outlined),
      //       Icon(Icons.star_half),
      //     ],
      //   ),
      // ),

      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Icon(Icons.eighteen_mp_outlined),
            Icon(Icons.safety_check),
            Icon(Icons.qr_code_2_outlined),
            Icon(Icons.r_mobiledata_sharp),
          ],
        ),
      ),
    );
  }
}
