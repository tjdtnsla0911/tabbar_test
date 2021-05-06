

import 'package:flutter/material.dart';
import '../animalItem.dart';

class SecondeApp extends StatefulWidget {

  @override
  _SecondeAppState createState() => _SecondeAppState();

  List<Animal> list;

  SecondeApp({Key key, @required this.list}) : super(key: key);
}

class _SecondeAppState extends State<SecondeApp> {
  final nameController = TextEditingController();
  int _radioValue = 0;
  bool flyExist = false;
  var _imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
              //############################
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Text('Test App \n Test를 위한 AndroidApp'),
                  ],
                ),
              ),
              //#############################3
              Container(
                height: 50,
                child: ListView(scrollDirection: Axis.horizontal,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  //value : 인덱스 , groupvalue : 라디오버튼은 같은 그룹에서 하나만 선택할수잇는 특징이있다. 고로 groupvalue 는 그룹화, onChanged : 이벤트처리
                  Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('데스크탑앱'),
                  Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('형상관리'),
                  Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('자동배포'),
                  Radio(
                      value: 3,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('데이터베이스'),
                  Radio(
                      value: 4,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('언어'),
                  Radio(
                      value: 5,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('프론트'),
                ],
                ) ,
              ),

              ////////////
              //바꿔보기
              // Row(
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,

                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('요즘 뜨고있는 건가?'),
                    Checkbox(
                        value: false,
                        onChanged: (check) {
                          setState(() {
                            flyExist = check;
                          });
                        })
                  ],
                  // ),
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  //ListView는 세로Scroll이 기본이지만
                  //scrollDirection을 사용해서 가로로도 가능 아마그게 horizontal인듯
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[
                    GestureDetector(
                      child: Image.asset('repo/images/electron.png', width: 80),
                      onTap: () {
                        _imagePath = 'repo/images/electron.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'repo/images/github.png',
                        width: 80,
                      ),
                      onTap: () {
                        // 콜백용도로 쓰는게 onTap
                        _imagePath = 'repo/images/github.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'repo/images/jenkins.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'repo/images/jenkins.png';
                      },
                    ),
                    /////////////////////////////////
                    GestureDetector(
                      child: Image.asset(
                        'repo/images/oracle.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'repo/images/oracle.png';
                      },
                    ),
                    //  #######라인수 초과해서잠시 주석쳐놓음######
                    GestureDetector(
                      child: Image.asset(
                        'repo/images/python.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'repo/images/python.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'repo/images/react.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'repo/images/react.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'repo/images/springboot.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'repo/images/springboot.png';
                      },
                    ),
                  ],
                  // mainAxisAlignment: MainAxisAlignment.spaceAround, //<-- 얘는 lIstView로바꾸니까 에러뜸
                ),
              ),
              RaisedButton(
                child: Text('새로운 기술 추가하기'),
                onPressed: () {
                  setState(() {
                    print('추가하기클릭');
                    var coding = Animal(
                        lengthName: nameController.value.text,
                        kind: getKind(_radioValue),
                        imagePath: _imagePath,
                        flyExist: flyExist);
                    AlertDialog dialog = AlertDialog(
                      title: Text('기술 추가하기'),
                      content: Text(
                        '이 기술의 이름은 ${coding.lengthName} 이며,'
                        '기술의 종류는 ${coding.kind}입니다.\n 이기술을 추가하시겠습니까?',
                       style: TextStyle(fontSize: 30.0,color: Colors.cyan),
                      ),
                      actions: [
                        RaisedButton(onPressed: (){
                          widget.list.add(coding);
                          Navigator.of(context).pop();
                        },child: Text('Yes'),),
                        RaisedButton(onPressed: (){
                          Navigator.of(context).pop();
                        },child: Text('No'),
                        ),
                      ],
                    );
                    showDialog(context: context, builder: (BuildContext context) => dialog);
                  });
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

  _radioChange(int value) {
    print('_radioChange에옴 value : $value');
    setState(() {
      _radioValue = value;
    });
  }

  getKind(int radioValue){
    switch(radioValue){
      case 0:
        return '안뜸';
      case 1 :
        return '안뜸';
      case 2:
        return '안뜸';
      case 3 :
        return '안뜸';
      case 4:
        return '뜨고있음';
      case 5 :
        return '뜨고있음';
    }
  }
}

// class SecondeApp extends StatelessWidget {
//   final List<Animal> list;
//   SecondeApp({Key key , this.list}) : super(key : key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Text('두번째 페이지!'),
//         ),
//       ),
//     );
//   }
// }
