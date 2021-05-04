import 'package:flutter/material.dart';
class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('FirstApp의 bulid에왔습니다');
    return Scaffold(
      body : Container(
        child: Center(
          child: Text('첫번째 페이지!'),
        ),
      ),
    );
  }
}
