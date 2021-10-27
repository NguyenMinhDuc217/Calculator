import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
                width: 215,
                height: 150,
                child: Text("0",style: TextStyle(fontSize: 20),),
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Text("AC",style: TextStyle(color: Colors.white),),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  OutlinedButton(onPressed: (){}, child: Text("C")),
                  OutlinedButton(onPressed: (){}, child: Text("%")),
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Text("/",style: TextStyle(color: Colors.white),),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  OutlinedButton(onPressed: (){}, child: Text("7")),
                  OutlinedButton(onPressed: (){}, child: Text("8")),
                  OutlinedButton(onPressed: (){}, child: Text("9")),
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Text("*",style: TextStyle(color: Colors.white),),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  OutlinedButton(onPressed: (){}, child: Text("4")),
                  OutlinedButton(onPressed: (){}, child: Text("5")),
                  OutlinedButton(onPressed: (){}, child: Text("6")),
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Text("-",style: TextStyle(color: Colors.white),),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize : MainAxisSize.min,
                children: [
                  OutlinedButton(onPressed: (){}, child: Text("1")),
                  OutlinedButton(onPressed: (){}, child: Text("2")),
                  OutlinedButton(onPressed: (){}, child: Text("3")),
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Text("+",style: TextStyle(color: Colors.white),),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ],
              ),
                Row(
                  mainAxisSize : MainAxisSize.min,
                children: [
                  OutlinedButton(onPressed: (){}, child: Text("0")),
                  OutlinedButton(onPressed: (){}, child: Text("0")),
                  OutlinedButton(onPressed: (){}, child: Text(".")),
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Text("=",style: TextStyle(color: Colors.white),),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}