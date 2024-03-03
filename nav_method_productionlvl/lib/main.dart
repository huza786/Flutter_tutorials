import 'package:flutter/material.dart';
import 'package:nav_method_productionlvl/pages/home_screen.dart';
import 'package:nav_method_productionlvl/pages/utils/generateroute.dart';
import 'package:nav_method_productionlvl/pages/utils/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteName.homescreen,
      onGenerateRoute: generateRoute,
    );
  }
}
