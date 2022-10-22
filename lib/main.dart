import 'package:flutter/material.dart';
import 'top_bar.dart';
import 'list_of_tasks.dart';

/* TODO
 *  make a list of tasks
 *  fetchData with mock data
 *  side bar ?
 */

const theme = TextTheme(
  headline1: TextStyle(fontSize: 72.0, color: Colors.black),
  headline6: TextStyle(fontSize: 36.0, color: Colors.black),
  bodyText1: TextStyle(fontSize: 25.0, color: Colors.black), // list items
);

void main() {
  // we create a object MyApp and pass it to func
  // new *ClassName*(*args*)
  // is how we create an object
  runApp(const MyApp());
}

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

      /*        main page      */

      // task (main part)                                                 
      home: Align(
        alignment: Alignment.topCenter,
        child: Column(children: const [
          TopBar(),
          TaskList(),
        ]),
      ),
      
      /* top bar */
      // home: const Align(
      //   alignment: Alignment.topCenter,
      //   child: SizedBox(
      //     height: 100,
      //     child: TopBar(),
      //   ),
      // ),
    );
  }
}




/*
                  //////////////////////////
                  ///  Example is below  ///
                  //////////////////////////
*/


// this is basiclly class that holds *createState* function
class ExampleOfMainApp extends StatefulWidget {

  // this is __init__ but in this language
  const ExampleOfMainApp(); // there is nothing there

  // yes this one it is important one
  // it basically creates widget
  @override
  State<ExampleOfMainApp> createState() => _ExampleOfMainAppState();
}

// Class for our app
class _ExampleOfMainAppState<T extends StatefulWidget> extends State<T> {

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