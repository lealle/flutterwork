import 'package:flutter/material.dart';


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
  var total = 5;

  addFriend(addName) {
    setState(() {
      name.add(addName);
      total++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(context);
          showDialog(
              context: context,
              builder: (context) {
                return CustomDialog(friendState : addFriend);
              }
          );
        },
        child: Text(''),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff3edf7),
        leading: Icon(Icons.list),
        title: Text(total.toString()),
        actions: [Icon(Icons.search), Icon(Icons.share)],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: total-1,
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

class CustomDialog extends StatelessWidget {
  // 1. const 지우기
  CustomDialog({super.key, this.friendState});
  final friendState;
  // 2. 변수 만들기
  var inputData = TextEditingController();
  
  // 5. 에 사용할 변수
  var inputData2 = '이름';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            // 3. 변수에 저장 (controller : 변수명)
            // 실시간 출력 안됨
            // TextField(controller: inputData,),

            // 3-2. 실시간 변수에 입력값 넣기
            // 4. onChanged 사용하여 실시간으로 출력 넣기
            // TextField(onChanged: (text){print(text);}),
            // 5. onChanged 사용하여 변수에 저장
            TextField(onChanged: (text){inputData2 =  text;}),
            TextButton(onPressed: (){
              // print(inputData.text);
              friendState(inputData2);
              print(inputData2);
              Navigator.pop(context);
            },
                child: Text('완료')
            ),
            TextButton(onPressed: (){ Navigator.pop(context); }, child: Text('취소'))
          ],
        ),
      ),
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