import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Let Me Resolve Your Deepest Questions!')),
        ),
        body: Decesion_App(),
      ),
    ),
  );
}



class Decesion_App extends StatefulWidget {
  const Decesion_App({Key? key}) : super(key: key);

  @override
  _Decesion_AppState createState() => _Decesion_AppState();
}

class _Decesion_AppState extends State<Decesion_App> {
  int ballNum=2;

  void changeDecesion(){
    setState(() {
      ballNum= Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        child: TextButton(
          onPressed: (){
            changeDecesion();
          },
            child: Image.asset('images/ball$ballNum.png')),
      ),
    );
  }
}
