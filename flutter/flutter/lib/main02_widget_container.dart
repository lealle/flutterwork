import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 1. StatelessWidget - 변하지 않는 위젯
// 2. StatefulWidget - 변하는 위젯

// widget 항상 상위에 있어야함 위젯으로 감싸고
/*
// widget 2개
* - Material widget(Google), Cupertino widget(IOS)
*   : 위젯을 사용하려면 반드시 2개 중 하나를 사용해야 그 안에 있는 디자인을 기반으로 위젯이 만들어짐
 *   (미리 만들어 놓은 위젯들을 가져다 사용함. 컴포넌트(or 라이브러리)가 들어있다 생각하면 됨 )
      위젯들이 정상 작동하려면 반드시 넣어야 됨

`     1. Material widget : 안드로이드용 widget
      2. Cupertino widget : IOS용 widget

      > flutter 에서 안드로이드 폰을 만들어도 Cupertino widget 사용 가능
      > 즉, flutter 서로 교차 사용 가능

      * 기본적으로 많이 사용하는 widget 
      1. Text() : 글씨 넣기 -> Text('글씨')
      2. Image() : 이미지 넣기 -> Image.asset('이미지명')
      3. Icon() : 아이콘 넣기 -> Icon(Icon.??)
      4. Container : 박스 넣기

*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 첫 번째 화면 설정, 기본적으로 앱이 시작되면 화면이 가장 먼저 보임   
      // home: Text('글씨'),

      // home: Icon(Icons.star),

      // home: Image.asset('assets/images/cat.jpg'),
      // 안되면 flutter clean -> flutter pub get -> flutter run

      // home: Container(color: Colors.cyan,)
      // 기준이 없어서 가로 세로 지정해도 차이없음
      // 박스의 기준이 없음
      // Container(width: 50,height: 50,color: Colors.cyan,)

      // 박스의 기준 선정
      // home: Center(child:Container(width: 50,height: 50,color: Colors.cyan,))
      home: Center(
        child: Container(
            child: Text('박스안의 글자 넣기'),
            width: 250,
            height: 200,
            color: Colors.indigoAccent,
        ),
      )





    );
  }
}

