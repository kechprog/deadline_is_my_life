import 'package:flutter/material.dart';

/* TODO
 * Register page
 * Error handling
 */

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _LoginPageState({Key? key});
  String login = '', password = '';

  void goToMainPage() {
    if (login == '' || password == '') {
      print("Error: login or password is empty");
    }
    else {
      print("Login: $login, password: $password");
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
          onPressed: goToMainPage,
          child: const Text('Login'),
        ),
      ]),
    );
  }

}