import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  // TODO
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Align(
    alignment: Alignment.center,
     child: AppBar(
        title: const Text("Bar"),
      )
    );
  }
}