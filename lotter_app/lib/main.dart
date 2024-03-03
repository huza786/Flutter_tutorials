import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var x = 0;
  Random random = Random();

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery app'),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Winning number is 57\n your number is $x',
                textAlign: TextAlign.center,
              ),
              Center(
                child: Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: x == 57
                        ? Center(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.done_all,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                Text(
                                  'Congratulations\nYou Won the Lottery',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        : Center(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.warning,
                                  color: Colors.red,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                Text(
                                  'Sorry you have lost\nBetter luck next time',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                  ),
                ),
              )
            ]),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            x = random.nextInt(100);
            setState(() {});
          },
        ),
      ),
    );
  }
}
