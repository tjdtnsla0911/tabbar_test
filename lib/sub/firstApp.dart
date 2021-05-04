import 'dart:ui';

import 'package:flutter/material.dart';
import '../animalItem.dart';

class FirstApp extends StatelessWidget {
  final List<Animal> list;
  FirstApp({Key key, this.list}) : super(key : key); //생성자인데 이게없으면 final로 만든데 에러터짐

  @override
  Widget build(BuildContext context) {
    print('FirstApp의 bulid에왔습니다');
    print('FirstApp의 list : $list');
    print('FirstApp의 this.list ${this.list}');
    return Scaffold(
      body : Container(
        child: Center(
          child: ListView.builder(itemBuilder: (content,position){ //itemBuilder는 BuldContext와 int를 반환함
            //BuildContext는 위젯트리에서 위젯의 위치를 알려주며 int는 아이템의 순번을 의미
              print('fristApp의 ListView.bulilder의 content : $content');
              print('fristApp의 ListView.bulilder의 position : $position');
              return Card( //이부분에 위젯을 통해 데이터를 표시);
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      list[position].imagePath,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    Text(list[position].lengthName),
                  ],
                ),
             );
            },
            itemCount: list.length
          ),//아이템 개수만큼 스크롤 할수잇게 제한
        ),
      ),
    );
  }
}
