import 'package:flutter/material.dart';

import '../../data.dart';

class ExpandedView extends StatefulWidget {
  final int index;
  const ExpandedView({Key? key, required this.index}) : super(key: key);

  @override
  _ExpandedViewState createState() => _ExpandedViewState();
}

class _ExpandedViewState extends State<ExpandedView> {

  @override
  Widget build(BuildContext context) {
    var data = AppData().getData()[widget.index];

    

    return Scaffold(
      appBar: AppBar( title: Text(data.name) ),
      body: ListView(children: List.generate(
      data.checkpointNames.length,
      (index) {
        Widget widget = 
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: TextEditingController()..text = data.checkpointNames[index],
                onChanged: (text) { AppData().setName(data.id, index, text); }
              ),
              TextField(
                controller: TextEditingController()..text = data.checkpointDescriptions[index],
                onChanged: (text) { AppData().setDesc(data.id, index, text); }
              )
            ]
          )
        );

        return widget;
      }
    ))
    );
  }
}