import 'package:flutter/material.dart';
import 'package:nav_page/home.dart';
import 'package:nav_page/page_1.dart';
import 'package:nav_page/screentwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        PageOne.id: (context) => PageOne(),
        Page2.id: (context) => Page2(),
      },
    );
  }
}
