import 'package:flutter/material.dart';
import 'package:nav_method_productionlvl/pages/utils/route.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen3'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.popAndPushNamed(context, RouteName.homescreen);
        },
        child: Center(
          child: Text('home'),
        ),
      ),
    );
  }
}
