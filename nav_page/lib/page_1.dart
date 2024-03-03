import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  static const String id = 'page1.id';

  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
