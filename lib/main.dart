import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tabbar_test/sub/firstApp.dart';
import 'package:tabbar_test/sub/secondApp.dart';

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
  @override
  Widget build(BuildContext context) {
    print('main.dart의 bulid시작');
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Example'),
      ),
       body: TabBarView(
         children: <Widget>[FirstApp(),SecondeApp()],
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
    print('initState에옴 렌더링되고실행됨');
    print('initState의 this : $this');
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    print('dispose실행');
    controller.dispose();
    super.dispose();
  }
}



