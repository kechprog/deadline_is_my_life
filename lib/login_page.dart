import 'package:deadline_is_my_life/register_page.dart';
import 'package:flutter/material.dart';
import 'main_page/main_page.dart';
import 'data.dart';

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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage(
          login: login,
          password: password,
        )),
      );
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
        const Padding(padding: EdgeInsets.all(10.0)),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          },
          child: const Text('Register'),
        ),
      ]),
    );
  }

}