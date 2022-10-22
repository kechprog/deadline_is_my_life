import 'package:flutter/material.dart';

import 'main_page/main_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  _RegisterPageState({Key? key});
  String login = '', password = '';

  void registerAndLogin() {
    if (login == '' || password == '') {
      print("Error: login or password is empty");
    }
    else {   
      print("sending shit to server");
      // going back to login page
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DIMS")),
      body: Column(children: [
        const Padding(padding: EdgeInsets.all(10.0)),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Login',
          ),
          onChanged: (text) {
            login = text;
          },
        ),
        const Padding(padding: EdgeInsets.all(10.0)),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
          onChanged: (text) {
            password = text;
          },
        ),
        const Padding(padding: EdgeInsets.all(10.0)),
        ElevatedButton(
          onPressed: registerAndLogin,
          child: const Text('Register'),
        ),
      ]),
    );
  }
}