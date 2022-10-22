import 'package:deadline_is_my_life/data.dart';
import 'package:flutter/material.dart';
import 'list_of_tasks.dart';
import 'side_panel.dart';
import 'top_bar.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.login, required this.password});
  final String login, password;

  @override
  _MainPageState createState() => _MainPageState(login, password);
}

class _MainPageState extends State<MainPage> {
  @override
  _MainPageState(String login, String password){
    AppData(login: login, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(),
      body: TaskList(),
      drawer: SidePanel(),
    );
  }
}