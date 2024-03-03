import 'package:firebasetask/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebasetask/authentication_service.dart';
import 'package:provider/provider.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 5,
        title: Text('Sign IN'),
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 350,
                  child: Center(
                    child: TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(hintText: 'Email'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 350,
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Password'),
                      controller: passwordcontroller,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  context
                      .read<AuthenticationService>()
                      .signin(
                        email: emailcontroller.text.trim(),
                        password: passwordcontroller.text.trim(),
                      )
                      .whenComplete(() => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => MyHomePage())));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.amberAccent)),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ]),
      ),
    );
  }
}
