import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
Container _buildOutlinedButton(String text,Color color,{double width=50}) {
  return Container(margin:EdgeInsets.fromLTRB(0,5,10,0), child:OutlinedButton(
      onPressed: () {},
      child: Text(text,style: TextStyle(color: Colors.white)),
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          minimumSize: Size(width, 50),
          backgroundColor: color,)));
          
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bài tập nhóm tuần 04',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Máy tính'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                margin: const EdgeInsets.only(top: 10),
                width: 215,
                height: 150,
                child: Text("0",style: TextStyle(fontSize: 20),),
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("AC",Colors.green),
                  _buildOutlinedButton("C",Colors.green),
                  _buildOutlinedButton("%",Colors.green),
                  _buildOutlinedButton("/",Colors.blue),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                 _buildOutlinedButton("7",Colors.grey),
                  _buildOutlinedButton("8",Colors.grey),
                  _buildOutlinedButton("9",Colors.grey),
                  _buildOutlinedButton("*",Colors.blue),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("4",Colors.grey),
                  _buildOutlinedButton("5",Colors.grey),
                  _buildOutlinedButton("6",Colors.grey),
                  _buildOutlinedButton("-",Colors.blue),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("1",Colors.grey),
                  _buildOutlinedButton("2",Colors.grey),
                  _buildOutlinedButton("3",Colors.grey),
                  _buildOutlinedButton("+",Colors.blue),
                ],
              ),
                Row(
                  mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("0",Colors.grey,width:110),
                  _buildOutlinedButton(".",Colors.grey),
                  _buildOutlinedButton("=",Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}