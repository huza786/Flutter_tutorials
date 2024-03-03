import 'package:flutter/material.dart';
import 'package:nav_method_productionlvl/pages/utils/route.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen3'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteName.screen3);
        },
        child: const Center(
          child: Text('Screen3'),
        ),
      ),
    );
  }
}
