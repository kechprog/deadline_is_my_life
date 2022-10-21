import 'package:flutter/material.dart';


class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.blue,
      child: Row(
        children: const [
          _Button(text: "Press me left"),
          Spacer(),
          _Button(text: "Press me right")
        ],
      ),
    );
  }
}

// underscore before class 
// means that it is private
// thus u can't access it main.dart
class _Button extends StatelessWidget {
  final String text;
  const _Button({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print("Button pressed!"),
      child: const Text("Press me!", style: TextStyle(color: Colors.white)),
    );
  }
}