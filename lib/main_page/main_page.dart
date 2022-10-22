import 'package:flutter/material.dart';
import 'list_of_tasks.dart';
import 'side_panel.dart';
import 'top_bar.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(),
      body: TaskList(),
      drawer: SidePanel(),
    );
  }
}