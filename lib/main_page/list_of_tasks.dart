import 'package:flutter/material.dart';
import '../data.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    var data = AppData().getData();
    var taskList = data.map((task) => Task(
      name: task.name,
      description: task.description,
      due: task.due,
    )).toList();

    return Column(
      children: taskList,
    );
  }

}


class Task extends StatefulWidget {
  final String name, description;
  final DateTime due;
  const Task({super.key, required this.name, required this.description, required this.due});

  @override
  // ignore: no_logic_in_create_state
  State<Task> createState() => _TaskState(name:name, description:description, due: due);
}

class _TaskState extends State<Task> {
  String name = '';
  String description = '';
  DateTime due;
  _TaskState({required this.name, required this.description, required this.due});

  String timeTillDue() {
    return due.difference(
      DateTime.now())
      .toString();
  }

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(10);
    var style = Theme.of(context).textTheme.bodyText1;
    return Center(
      child: Row(
        children: [
          const Padding(padding: padding),
          Text(name, style: style),
          const Padding(padding: padding),
          Text(description, style: style),
          const Padding(padding: padding),
          Text(timeTillDue(), style: style),
          const Padding(padding: padding),
        ],
      ),
    );
  }
}