import 'package:flutter/material.dart';
import 'package:nav_method_productionlvl/pages/utils/route.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen2'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteName.screen2);
        },
        child: Center(
          child: Text('Screen2'),
        ),
      ),
    );
  }
}
