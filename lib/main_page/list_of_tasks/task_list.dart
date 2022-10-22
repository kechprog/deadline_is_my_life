import 'package:deadline_is_my_life/main_page/list_of_tasks/expanded_view.dart';
import 'package:flutter/material.dart';
import '../../data.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    var taskList = List.generate(AppData().getData().length, (index) => Task(index: index));
    
    return ListView(
      children: taskList,
    );
  }  
}


class Task extends StatelessWidget {
  final int index;
  Task({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = AppData().getData()[index];
    var due = "Due: ${data.due.hour}:${data.due.minute} ${data.due.day}/${data.due.month}/${data.due.year}";

    return DecoratedBox(decoration: BoxDecoration(border: Border.all(color: Colors.black)), child: 
      TextButton( onPressed: () => { 
        Navigator.push(context, MaterialPageRoute(builder: (context) => ExpandedView(index: index)),) 
      },

        child: Column(children: [
          Row( children: [
            Text(data.name, style: Theme.of(context).textTheme.headline6),
            const Spacer(),
            Text(due,       style: Theme.of(context).textTheme.headline6),
          ]),
          Align( alignment: Alignment.centerLeft,
            child: Text(data.description, style: Theme.of(context).textTheme.bodyText1)
          )
        ])
      )
    );
  } 
}