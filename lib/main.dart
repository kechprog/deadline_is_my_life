import 'package:flutter/material.dart';

void main() {
  // we create a object MyApp and pass it to func
  // new *ClassName*(*args*)
  // is how we create an object
  runApp(const MyApp());
}

// this is basiclly class that holds *createState* function
class MyApp extends StatefulWidget {

  // this is __init__ but in this language
  const MyApp(); // there is nothing there

  // yes this one it is important one
  // it basically creates widget
  @override
  State<MyApp> createState() => _MyAppState();
}

// Class for our app
class _MyAppState<T extends StatefulWidget> extends State<T> {

  // 0 is default value
  int count = 0;

  // we call this to update state
  void updateCount() {
    setState(() {
      count++;
    });
  }

  // every time count changes it calls this func
  // and rebuilds widget
  @override
  Widget build(BuildContext context) {
    // this is magic class that creates our App
    return MaterialApp(
      title: "This is title",
      home: TextButton(
        onPressed: updateCount,
        child: Text("Count: $count"),
      )
    );
  }
}