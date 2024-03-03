import 'package:flutter/material.dart';
import 'package:nav_method_productionlvl/pages/screen_1.dart';
import 'package:nav_method_productionlvl/pages/utils/route.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text('Screen1'),
          onTap: () {
            Navigator.pushNamed(context, RouteName.screen1);
          },
        ),
      ),
    );
  }
}
