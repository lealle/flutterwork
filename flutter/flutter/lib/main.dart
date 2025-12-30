import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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

          body: proItems,
      ),
    );
  }
}

// 변수로 제작
var proItems = SizedBox(
  child: Text('hi'),
);









