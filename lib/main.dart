import 'package:flutter/material.dart';
import 'package:Calculator/hovering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget calculator = Calculator();
    return MaterialApp(
      title: 'Bài tập nhóm tuần 04',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Máy tính'),
        ),
        backgroundColor: Color(0 * 202020),
        body: Center(
          child: calculator,
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String history = "";
  String result = "0";
  String temp = "0";
  double number1 = 0.0;
  double number2 = 0.0;
  String calculation = "";
  int index = 0;

  buttonPressed(String buttonText) {
    if (result == "0" && buttonText != "=") {
      if (history != "" && index == 1) {
        history = "";
        index--;
      }
      if (buttonText != "AC" && buttonText != "C") {
        result = buttonText;
      }
    } else if (buttonText == "AC") {
      history = "";
      result = "0";
      temp = "0";
    } else if (buttonText == "C") {
      result = result.substring(0, result.length - 1);
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "x" ||
        buttonText == "/") {
      number1 = double.parse(result);
      history = history + " " + result + " " + buttonText;
      result = "0";
      calculation = buttonText;
      temp = "0";
    } else if (buttonText == ".") {
      if (result.contains(".")) {
        Text("Already conatains a decimals");
        return;
      } else {
        result = result + buttonText;
      }
    } else if (buttonText == "=") {
      history = history + " " + result + " " + buttonText;
      number2 = double.parse(result);
      if (calculation == "+") {
        temp = (number1 + number2).toString();
      }
      if (calculation == "-") {
        temp = (number1 - number2).toString();
      }
      if (calculation == "x") {
        temp = (number1 * number2).toString();
      }
      if (calculation == "/") {
        if (number2 != 0) {
          temp = (number1 / number2).toString();
        } else {
          temp = "Cannot divide by zero!";
        }
      }
      result = temp;
      history = history + " " + result;
      result = "0";
      number1 = number2 = 0.0;
      calculation = "";
      index++;
    } else {
      result = result + buttonText;
    }
    setState(() {});
  }

  Widget _buildOutlinedButton(String text, Color color, {double width = 60}) {
   return HoverContainer(
        margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
        hoverWidth: width,
        hoverHeight: 50,
        child: OutlinedButton(
            onPressed: () {
              buttonPressed(text);
            },
            child: Text(text, style: TextStyle(color: Colors.white)),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(width, 50),
              backgroundColor: color,
            )));
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [   
        Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
            margin: const EdgeInsets.only(top: 10),
            width: 220,
            height: 150,
            child: Column(
              // Dùng để căn chỉnh về bên phải container
              crossAxisAlignment : CrossAxisAlignment.end,
              // Dùng để căn chỉnh về phía dưới container
              mainAxisAlignment : MainAxisAlignment.end,
              children: [
                Text(
                  history,
                  style: TextStyle(fontSize: 20,color:Colors.grey),
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 25),
                ),
              ],
            )),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildOutlinedButton("AC", Colors.green),
            _buildOutlinedButton("C", Colors.green),
            _buildOutlinedButton("%", Colors.green),
            _buildOutlinedButton("/", Colors.blue),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildOutlinedButton("7", Colors.grey),
            _buildOutlinedButton("8", Colors.grey),
            _buildOutlinedButton("9", Colors.grey),
            _buildOutlinedButton("x", Colors.blue),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildOutlinedButton("4", Colors.grey),
            _buildOutlinedButton("5", Colors.grey),
            _buildOutlinedButton("6", Colors.grey),
            _buildOutlinedButton("-", Colors.blue),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildOutlinedButton("1", Colors.grey),
            _buildOutlinedButton("2", Colors.grey),
            _buildOutlinedButton("3", Colors.grey),
            _buildOutlinedButton("+", Colors.blue),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildOutlinedButton("0", Colors.grey, width: 120),
            _buildOutlinedButton(".", Colors.grey),
            _buildOutlinedButton("=", Colors.blue),
          ],
        ),
      ],
    );
  }
}
