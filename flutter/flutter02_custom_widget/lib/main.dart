import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(backgroundColor: Color(0xfff3edf7),),
//         body:
//         ListView(
//           children: [
//             ListTile(
//               leading: Image.asset('assets/123.png'),
//               title: Text('hi'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list),
          backgroundColor: Color(0xfff3edf7),
          title: Text('주소록'),
          actions: [
            Icon(Icons.search),
            Padding(padding: EdgeInsetsGeometry.all(5)),
            Icon(Icons.share),
          ],
        ),

        body:
        ListView.builder(
          itemCount: 100, // 반복 횟수
          itemBuilder: (context, index){
            return widget1;
          },
        ),
      ),
    );
  }
}

final widget1 = SizedBox(
    child: Row(
    children: [
      Padding(padding: EdgeInsetsGeometry.all(15)),
      Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Image.asset('assets/123.png',width: 100,)
      ),
      Padding(padding: EdgeInsetsGeometry.all(15)),
      Text('홍길동'),
    ],
  ),
);
/*
* 구분             l   ListView()                   ㅣ     ListView.builder()
* --------------------------------------------- --------------
* 생성방식          l  앱 실행 시점에 모두 메모리에 생성 ㅣ  스크롤 시점에 필요한 위젯만 생성(지연생성)
* 사용대상          l 리스트가 짧거나 고정된 경우       ㅣ  리스트가 길거나 동적으로 바뀔 때
* 성능             l 항목이 많으면 성능 저하           ㅣ   성능 매우 효율적
* 필요한 파라미터    l children : [...]              ㅣ   itemcount, itemBuilder
* 사용             l 리스트 항목이 10개 이하로 작을때   ㅣ  리스트가 많거나 무한스크롤, 동적 데이터일 경우
* */