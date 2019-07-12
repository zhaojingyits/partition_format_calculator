import 'package:flutter/material.dart';
import 'calchelper.dart';
class CalculatePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new CalculatePageState();
  }
}
class CalculatePageState extends State<CalculatePage> {
  String calcResult='0';
  int isntfs=1;
  int _tempGB;
  void _doCalculate(String str){
    setState(() {
      _tempGB=int.parse(str);
      _setted();
    });
  }
  void _setted(){
    setState(() {
      calcResult=isntfs==1
    ?calculateNTFS(_tempGB).toString()
    :calculateFAT(_tempGB).toString();
    });
  }
  void _setNTFS(){
    setState(() {
      isntfs=1;
    });
  }
  void _setFAT(){
    setState(() {
      isntfs=0;
    });
  }
  Widget build(BuildContext context)=>Container(
    alignment: Alignment.center,
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
    const SizedBox(height: 10),
    Text('目标文件系统:',textScaleFactor: 1.2),
    Row(
      children: <Widget>[
        Flexible(child: RadioListTile<int>(groupValue: isntfs,value: 1,title: Text('NTFS'), onChanged: (value) {_setNTFS();_setted();},),),
        Flexible(child: RadioListTile<int>(groupValue: isntfs,value: 0,title: Text('FAT32'), onChanged: (value) {_setFAT();_setted();},),)
      ],
    ),
    const SizedBox(height: 10),
    Text('目标分区容量:',textScaleFactor: 1.2),
    const SizedBox(height: 10),
    TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        icon: Icon(Icons.list),
        labelText: '请输入分区容量(GB)',
        helperText: '仅支持整数的GB值'
      ),
      onChanged: _doCalculate,
      autofocus: false,
    ),
    const SizedBox(height: 10),
    Divider(),
    Text('整数分区值(MB)为:',textScaleFactor: 1.2),
    const SizedBox(height: 10),
    Center(child:Text('$calcResult MB',textScaleFactor: 2.5,textAlign: TextAlign.center,))
  ],
  ));
}