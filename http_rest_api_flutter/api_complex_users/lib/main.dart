import 'package:api_complex_users/fakeproducts.dart';
import 'package:api_complex_users/uploadfile.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FakeProducts(),
    );
  }
}
