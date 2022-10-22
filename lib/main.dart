import 'package:flutter/material.dart';
import 'main_page/main_page.dart';

const theme = TextTheme(
  headline1: TextStyle(fontSize: 72.0, color: Colors.black),
  headline6: TextStyle(fontSize: 36.0, color: Colors.black),
  bodyText1: TextStyle(fontSize: 25.0, color: Colors.black), // list items
);

void main() { runApp(const MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
        textTheme: theme,
      ),                                               
      home: MainPage(),
    );
  }
}
