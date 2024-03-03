import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetask/Login_ui.dart';
import 'package:firebasetask/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Homepage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to our App!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                context.read<AuthenticationService>().signout().whenComplete(
                    () => Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => LoginUi())));
                ;
              },
              child: Container(
                height: 25,
                width: 150,
                child: Center(child: Text('Sign out')),
                decoration: BoxDecoration(color: Colors.amberAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
