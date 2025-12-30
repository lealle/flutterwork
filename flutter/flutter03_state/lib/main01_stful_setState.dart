import 'package:flutter/material.dart';
/*
* state (변수)
* - 일반 변수와 다른점 : 변경이 되면 재 렌더링해줌
* - state를 쓰려면 StatefulWidget 안에서 사용
* */

void main() {
  runApp(MyApp());
}

//
// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   var num = 1; // const 없으면 이렇게 넣을 수 있음
//   // final num1 = 1; // const 시에는 이렇게 사용가능
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(onPressed:
//         (){
//           print(num); // 콘솔은 숫자 증가
//           num++;
//         },
//           // 재랜더링 되지않아 ++한 결과 바로 뜨지 않음
//         child: Text('$num'),),
//
//         appBar: AppBar(),
//
//         body: Container(),
//
//
//
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num =1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed:
          (){
            print(num); // 콘솔은 숫자 증가
            // 재렌더링이 필요한 값은 setState 로 설정 
            setState(() {
              num++;
            });
          },
          child: Text('$num'),),
            // 재랜더링 되지않아 ++한 결과 바로 뜨지 않음

          appBar: AppBar(),

          body: Container(),



      ),
    );
  }
}
