import 'package:flutter/material.dart';
import '../animalItem.dart';

class SecondeApp extends StatelessWidget {
  final List<Animal> list;
  SecondeApp({Key key , this.list}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('두번째 페이지!'),
        ),
      ),
    );
  }
}
