import 'package:flutter/material.dart';
import 'strings.dart';
import 'dart:math';


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  Body createState() => Body();
}


class Body extends State<MyApp> {

  List colors = [Colors.red, Colors.green, Colors.yellow, Colors.white];
  Random random = new Random();

  int index = 0;
  int bonus = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(4));
  }

  void add() {  
    setState(() {
          bonus++;
    });
 }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:colors[index],
      appBar: AppBar(
        title: Text('Bonus: $bonus'),
      ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Padding (
             padding: const EdgeInsets.all(30.0),
             child: Text(
               Strings.appTitle,
               style: TextStyle(
               fontSize: 24.0,
               fontWeight: FontWeight.bold,
                ),
               ),
             ),
             RaisedButton(
               onPressed: () => changeIndex(),
               child: Text("Change color!"),
             ),
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
      onPressed: add,
      child: Icon(Icons.add),
      backgroundColor: Colors.pink,
    ),
    );
  }
}