import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calchelper.dart';
/*class PartitionDetails{
  int GB;
  int MBNTFS;
  int MBFAT;
  PartitionDetails(inpGB){
    this.GB=inpGB;
    this.MBNTFS=calculateNTFS(inpGB);
    this.MBFAT=calculateFAT(inpGB);
  }
}*/
class ListPage extends StatelessWidget{
  Widget build(BuildContext context)=>Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[DataTable(
            columnSpacing: 30.0,
    columns: <DataColumn>[
      DataColumn(label:  Text('整数容量(GB)'),),
      DataColumn(label:  Text('NTFS容量(MB)'),),
      DataColumn(label:  Text('FAT32容量(MB)'),),
    ],
    rows: <DataRow>[
    DataRow(cells: [DataCell(Text("10")),DataCell(Text(calculateNTFS(10).toString())),DataCell(Text(calculateFAT(10).toString())),]),
    DataRow(cells: [DataCell(Text("20")),DataCell(Text(calculateNTFS(20).toString())),DataCell(Text(calculateFAT(20).toString())),]),
    DataRow(cells: [DataCell(Text("30")),DataCell(Text(calculateNTFS(30).toString())),DataCell(Text(calculateFAT(30).toString())),]),
    DataRow(cells: [DataCell(Text("32")),DataCell(Text(calculateNTFS(32).toString())),DataCell(Text(calculateFAT(32).toString())),]),
    DataRow(cells: [DataCell(Text("40")),DataCell(Text(calculateNTFS(40).toString())),DataCell(Text(calculateFAT(40).toString())),]),
    DataRow(cells: [DataCell(Text("50")),DataCell(Text(calculateNTFS(50).toString())),DataCell(Text(calculateFAT(50).toString())),]),
    DataRow(cells: [DataCell(Text("60")),DataCell(Text(calculateNTFS(60).toString())),DataCell(Text(calculateFAT(60).toString())),]),
    DataRow(cells: [DataCell(Text("64")),DataCell(Text(calculateNTFS(64).toString())),DataCell(Text(calculateFAT(64).toString())),]),
    DataRow(cells: [DataCell(Text("80")),DataCell(Text(calculateNTFS(80).toString())),DataCell(Text(calculateFAT(80).toString())),]),
    DataRow(cells: [DataCell(Text("100")),DataCell(Text(calculateNTFS(100).toString())),DataCell(Text(calculateFAT(100).toString())),]),
    DataRow(cells: [DataCell(Text("120")),DataCell(Text(calculateNTFS(120).toString())),DataCell(Text(calculateFAT(120).toString())),]),
    DataRow(cells: [DataCell(Text("128")),DataCell(Text(calculateNTFS(128).toString())),DataCell(Text(calculateFAT(128).toString())),]),
    DataRow(cells: [DataCell(Text("150")),DataCell(Text(calculateNTFS(150).toString())),DataCell(Text(calculateFAT(150).toString())),]),
    DataRow(cells: [DataCell(Text("160")),DataCell(Text(calculateNTFS(160).toString())),DataCell(Text(calculateFAT(160).toString())),]),
    DataRow(cells: [DataCell(Text("180")),DataCell(Text(calculateNTFS(180).toString())),DataCell(Text(calculateFAT(180).toString())),]),
    DataRow(cells: [DataCell(Text("192")),DataCell(Text(calculateNTFS(192).toString())),DataCell(Text(calculateFAT(192).toString())),]),
    DataRow(cells: [DataCell(Text("200")),DataCell(Text(calculateNTFS(200).toString())),DataCell(Text(calculateFAT(200).toString())),]),
    DataRow(cells: [DataCell(Text("250")),DataCell(Text(calculateNTFS(250).toString())),DataCell(Text(calculateFAT(250).toString())),]),
    DataRow(cells: [DataCell(Text("256")),DataCell(Text(calculateNTFS(256).toString())),DataCell(Text(calculateFAT(256).toString())),]),
    DataRow(cells: [DataCell(Text("300")),DataCell(Text(calculateNTFS(300).toString())),DataCell(Text(calculateFAT(300).toString())),]),
    DataRow(cells: [DataCell(Text("320")),DataCell(Text(calculateNTFS(320).toString())),DataCell(Text(calculateFAT(320).toString())),]),
    DataRow(cells: [DataCell(Text("350")),DataCell(Text(calculateNTFS(350).toString())),DataCell(Text(calculateFAT(350).toString())),]),
    DataRow(cells: [DataCell(Text("384")),DataCell(Text(calculateNTFS(384).toString())),DataCell(Text(calculateFAT(384).toString())),]),
    DataRow(cells: [DataCell(Text("400")),DataCell(Text(calculateNTFS(400).toString())),DataCell(Text(calculateFAT(400).toString())),]),
    DataRow(cells: [DataCell(Text("450")),DataCell(Text(calculateNTFS(450).toString())),DataCell(Text(calculateFAT(450).toString())),]),
    DataRow(cells: [DataCell(Text("500")),DataCell(Text(calculateNTFS(500).toString())),DataCell(Text(calculateFAT(500).toString())),]),
    DataRow(cells: [DataCell(Text("512")),DataCell(Text(calculateNTFS(512).toString())),DataCell(Text(calculateFAT(512).toString())),]),
    DataRow(cells: [DataCell(Text("600")),DataCell(Text(calculateNTFS(600).toString())),DataCell(Text(calculateFAT(600).toString())),]),
    DataRow(cells: [DataCell(Text("640")),DataCell(Text(calculateNTFS(640).toString())),DataCell(Text(calculateFAT(640).toString())),]),
    DataRow(cells: [DataCell(Text("650")),DataCell(Text(calculateNTFS(650).toString())),DataCell(Text(calculateFAT(650).toString())),]),
    DataRow(cells: [DataCell(Text("700")),DataCell(Text(calculateNTFS(700).toString())),DataCell(Text(calculateFAT(700).toString())),]),
    DataRow(cells: [DataCell(Text("750")),DataCell(Text(calculateNTFS(750).toString())),DataCell(Text(calculateFAT(750).toString())),]),
    DataRow(cells: [DataCell(Text("800")),DataCell(Text(calculateNTFS(800).toString())),DataCell(Text(calculateFAT(800).toString())),]),
    DataRow(cells: [DataCell(Text("900")),DataCell(Text(calculateNTFS(900).toString())),DataCell(Text(calculateFAT(900).toString())),]),
    DataRow(cells: [DataCell(Text("1000")),DataCell(Text(calculateNTFS(1000).toString())),DataCell(Text(calculateFAT(1000).toString())),]),
    DataRow(cells: [DataCell(Text("1024")),DataCell(Text(calculateNTFS(1024).toString())),DataCell(Text(calculateFAT(1024).toString())),]),
    DataRow(cells: [DataCell(Text("1500")),DataCell(Text(calculateNTFS(1500).toString())),DataCell(Text(calculateFAT(1500).toString())),]),
    DataRow(cells: [DataCell(Text("1536")),DataCell(Text(calculateNTFS(1536).toString())),DataCell(Text(calculateFAT(1536).toString())),]),
    DataRow(cells: [DataCell(Text("2048")),DataCell(Text(calculateNTFS(2048).toString())),DataCell(Text(calculateFAT(2048).toString())),]),
    ],
  )]));
}