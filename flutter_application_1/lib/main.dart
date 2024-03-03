import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static var count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          foregroundColor: Color.fromARGB(255, 25, 248, 103),
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.add_a_photo,
          ),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Welcome',
            style: TextStyle(fontFamily: 'Pacifico'),
          )),
          backgroundColor: const Color.fromARGB(255, 67, 13, 195),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                  child: Container(
                child: Text('Kaise ho?'),
                height: 25,
                width: 75,
                color: Colors.blueAccent,
              )),
              const Center(
                  child: Text(
                'I am Fine',
                style: TextStyle(fontFamily: 'Pacifico', fontSize: 35),
              )),
              Center(
                  child: Container(
                child: Text('Urdu mein bol'),
                height: 25,
                width: 100,
                color: Colors.redAccent,
              )),
              Center(
                  child: Container(
                child: Text('Mai Theek hn'),
                height: 25,
                width: 100,
                color: Colors.pink,
              )),
              Center(
                  child: Container(
                child: Text('ok bro'),
                height: 25,
                width: 75,
                color: Colors.pinkAccent,
              )),
              Center(
                child: ColoredBox(
                  color: const Color.fromARGB(0, 182, 30, 30),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 35,
                    width: 135,
                    color: const Color.fromARGB(219, 230, 93, 238),
                    child: Text('You have pressed button $count  times'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
