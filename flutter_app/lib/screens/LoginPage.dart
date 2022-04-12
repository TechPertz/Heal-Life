// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = 'login_screen';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      child: const Text("Login"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
