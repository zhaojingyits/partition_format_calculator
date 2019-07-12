import 'package:flutter/material.dart';
import 'calc.dart';
import 'list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '整数分区计算器',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false, home: new MainPageWidget());
  }
}
 
class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}
 
class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['计算器', '常用容量'];
  /*
   * 存放三个页面，跟fragmentList一样
   */
  var _pageList;

  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff1296db)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }
 
 
  void initData() {

    _pageList = [
      new CalculatePage(),
      new ListPage(),
    ];
  }
 
  @override
  Widget build(BuildContext context) {
    //初始化数据
    initData();
    return Scaffold(
      appBar: AppBar(title: Text('整数分区计算器'),actions: <Widget>[
        IconButton(icon: Icon(Icons.info_outline),onPressed:(){ showAboutDialog(
          context: context,
          applicationIcon: Icon(Icons.list),
          applicationName: '整数分区计算器',
          applicationVersion: "1.0",
          children: [
            Text('赵敬一为广西大学学生科技协会制作。联系方式：zhaojingyits@foxmail.com'),
            Divider(),
            Text('采用Flutter技术构建。')
          ]
        );}
        ,)
      ],),
        body: _pageList[_tabIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: Icon(Icons.equalizer), title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: Icon(Icons.list), title: getTabTitle(1)),
          ],
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 24.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}