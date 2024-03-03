import 'package:flutter/material.dart';
import 'package:nav_page/page_1.dart';

import 'package:nav_page/screentwo.dart';

class Home extends StatefulWidget {
  static const String id = 'Home.id';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView(
          children: [
            ListTile(
              leading: Text('Page 1'),
              onTap: () {
                Navigator.pushNamed(context, PageOne.id);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PageOne.id);
                  },
                  icon: const Icon(Icons.access_alarm_outlined)))
        ],
      ),
    );
  }
}
