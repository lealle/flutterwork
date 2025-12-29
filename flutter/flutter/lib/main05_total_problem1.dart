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
        appBar: AppBar(
          actions: [Icon(Icons.one_x_mobiledata),Icon(Icons.list_alt),Icon(Icons.search)], // 오른쪽
          title: Text('예제'),
          backgroundColor: Colors.grey,),

        body: Padding(
          // 1. 전체적으로 패딩 20을 줌 (상하좌우 여백)
          padding: const EdgeInsets.all(20.0),
          child: Row(
            // 2. Row 내부 위젯들을 위쪽(상단)으로 밀착시킴
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 3. 왼쪽 영역 (이미지) - 전체의 50% 차지
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  // 높이를 맞추거나 테두리를 확인하고 싶을 때 유용
                  child: Image.asset(
                    'assets/images/cat.jpg',
                    fit: BoxFit.contain, // 이미지 비율 유지하며 영역 안에 배치
                  ),
                ),
              ),

              // 이미지와 텍스트 사이 간격이 필요하면 아래 주석 해제
              // const SizedBox(width: 20),

              // 4. 오른쪽 영역 (텍스트 컬럼) - 전체의 50% 차지
              Expanded(
                child: Column(
                  // 5. 열 내부 아이템들을 위에서부터 차례대로 배치 (상단 정렬)
                  mainAxisAlignment: MainAxisAlignment.start,
                  // 6. 텍스트들을 왼쪽 정렬 (중앙 정렬을 원하면 center로 변경)
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Candle(달콤한 향)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8), // 텍스트 간 간격 조절
                    Text('강남 15분전'),
                    Text('5,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold) ),
                    Align(
                      alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.favorite_border, color: Colors.red,),
                              Padding(padding: EdgeInsets.only(right: 15)),
                              Text('4'),
                              Padding(padding: EdgeInsets.only(right: 15)),
                            ],
                        ),
                      ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
