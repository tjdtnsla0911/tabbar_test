
import 'package:flutter/material.dart';
import 'package:tabbar_test/sub/firstApp.dart';
import 'package:tabbar_test/sub/secondApp.dart';
import 'animalItem.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController controller;
  List<Animal> codingList = List();
  @override
  Widget build(BuildContext context) {
    print('main.dart의 bulid시작');
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Example'),
      ),
       body: TabBarView(
         children:
         <Widget>[FirstApp(list : codingList),SecondeApp(list : codingList)],
         controller: controller,
       ),
      bottomNavigationBar: TabBar(
        tabs: <Tab>[
          Tab(icon: Icon(Icons.looks_one, color: Colors.blue,)),
          Tab(icon: Icon(Icons.looks_two, color: Colors.blue,),)
        ], controller: controller,
      ),
    );
  }
  @override
  void initState() {
    print('initState of this : $this');
    print('initState of Start condingList : $codingList');
    super.initState();
    codingList.add(Animal(lengthName: '일렉트론',kind: '데스크탑앱',imagePath: 'repo/images/electron.png'));
    codingList.add(Animal(lengthName: '깃허브',kind: '형상관리',imagePath: 'repo/images/github.png'));
    codingList.add(Animal(lengthName: '젠킨스',kind: '자동배포',imagePath: 'repo/images/jenkins.png'));
    codingList.add(Animal(lengthName: '오라클',kind: '데이터베이스',imagePath: 'repo/images/oracle.png'));
    codingList.add(Animal(lengthName: '파이썬',kind: '언어',imagePath: 'repo/images/python.png'));
    codingList.add(Animal(lengthName: '리엑트',kind: '프론트',imagePath: 'repo/images/react.png'));

    print('initState of End condingList : $codingList');
    controller = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    print('dispose실행');
    controller.dispose();
    super.dispose();
  }
}



