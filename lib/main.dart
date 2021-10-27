import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget calculator=Calculator();
    return MaterialApp(
      title: 'Bài tập nhóm tuần 04',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Máy tính'),
        ),
        backgroundColor: Color(0*202020),
        body: Center(
          child: calculator,
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget{
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator>{
  final String number="0";

  Widget _buildOutlinedButton(String text,Color color,String number,{double width=50}) {
  return Container(margin:EdgeInsets.fromLTRB(0,5,10,0), child: OutlinedButton(
      onPressed: (){},
      child: Text(text,style: TextStyle(color: Colors.white)),
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          minimumSize: Size(width, 50),
          backgroundColor: color,))
  );        
}
  @override
  Widget build(BuildContext context){
    return Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                margin: const EdgeInsets.only(top: 10),
                width: 215,
                height: 150,
                child: Text(number,style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("AC",Colors.green,number),
                  _buildOutlinedButton("C",Colors.green,number),
                  _buildOutlinedButton("%",Colors.green,number),
                  _buildOutlinedButton("/",Colors.blue,number),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("7",Colors.grey,number),
                  _buildOutlinedButton("8",Colors.grey,number),
                  _buildOutlinedButton("9",Colors.grey,number),
                  _buildOutlinedButton("*",Colors.blue,number),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("4",Colors.grey,number),
                  _buildOutlinedButton("5",Colors.grey,number),
                  _buildOutlinedButton("6",Colors.grey,number),
                  _buildOutlinedButton("-",Colors.blue,number),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("1",Colors.grey,number),
                  _buildOutlinedButton("2",Colors.grey,number),
                  _buildOutlinedButton("3",Colors.grey,number),
                  _buildOutlinedButton("+",Colors.blue,number),
                ],
              ),
                Row(
                  mainAxisSize : MainAxisSize.min,
                children: [
                  _buildOutlinedButton("0",Colors.grey,number,width:110),
                  _buildOutlinedButton(".",Colors.grey,number),
                  _buildOutlinedButton("=",Colors.blue,number),
                ],
              ),
            ],
          );
  }
}