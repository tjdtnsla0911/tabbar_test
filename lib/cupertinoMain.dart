import 'package:flutter/cupertino.dart';

//cupertino환경을만들어야함


//## Ios는 걍 무조껀 CuperTino가 붙는다. 이게걍 Swift이다.
class CupertinoMain extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _CupertinoMainState();
  }
  // @override
  // _CupertinoMainState createState() => _CupertinoMainState();
}

class _CupertinoMainState extends State<CupertinoMain> {
  CupertinoTabBar tabBar;

  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    print('tabBar = $tabBar');
    return  CupertinoApp( // IOS는 CupertinoApp을 , 안드로이드는 Material을 return 시킴
      home: CupertinoTabScaffold(
        tabBar: tabBar,
        tabBuilder: (context , value){
          if(value == 0){
            return Container(
              child: Center(
                child: Text('cupertino tab 1'),
              ),
            );
          }else{
            return Container(
              child: Center(
                child: Text('cupertino tab 2'),
              ),
            );
          }
        },
      ),
    );
  }
}
