import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int number = 0;

  void TekanDisini() {
    setState(() {
      number = number + 1 ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(), style: TextStyle(
                  fontSize: 10 + number.toDouble()),),
              MaterialButton(
                  child: Text("Tekan Dini"),
                  onPressed:TekanDisini)
            ],
          )
        ),
      ),
    );
  }
}
