import 'package:flutter/material.dart';
/*
 * 자식이 부모의 변수에 값을 사용하고 싶을 때
 * 1. 부모가 자식에게 보내기
 * 2. 자식은 부모가 보내준 변수 등록
 * 3. 자식이 사용 
 */
void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['이기쁨', '채규태', '이고잉', '송미영', '더조은'];
  var num = 7;
  // 0. 자식에게 보낼 변수 정의
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(context);
          showDialog(
              context: context,
              builder: (context) {
                // 1. 부모가 자식에게 보내기
                return CustomWidget1(num : num);
              }
          );
        },
        child: Text(''),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff3edf7),
        leading: Icon(Icons.list),
        title: Text('주소록'),
        actions: [Icon(Icons.search), Icon(Icons.share)],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('assets/user${index+1}.png'),
            title: Text(name[index]),
          );
        },
      ),
      bottomNavigationBar: CustomBottom(),
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.article_outlined),
          Icon(Icons.contacts)
        ],
      ),
    );
  }
}

class CustomWidget1 extends StatelessWidget {
  // 2. 자식은 부모에게 받은 값 등록
  CustomWidget1({super.key, this.num}); // 선택적 파라미터 없으면 안넣어도 ok 
  var num;

  @override
  Widget build(BuildContext context) {
    // Dialog 위젯으로 감싸야 레이아웃이 잡힙니다.
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        height: 400,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: '이름을 입력하세요'),
            ),
            SizedBox(height: 20,),
            TextButton(
                onPressed: () {  },
                child: Text('완료 $num')
            ),
            SizedBox(height: 20,),
            TextButton(
                onPressed: () { Navigator.pop(context); },
                child: Text('취소')
            )
          ],
        ),
      ),
    );
  }
}

