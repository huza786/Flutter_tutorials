import 'package:calculator/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Text(
                      userinput,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      answer,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(children: [
                Row(
                  children: [
                    ButtonCalculator(
                      title: 'AC',
                      onPress: () {
                        userinput = '';
                        answer = '';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '+/-',
                      onPress: () {
                        if ((userinput[0] == '+')) {
                          userinput[0] == '-';
                        } else if (userinput[0] == '-')
                          userinput[0] == '+';
                        else {
                          userinput = '-' + userinput;
                        }
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '%',
                      onPress: () {
                        userinput = userinput + '%';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '÷',
                      onPress: () {
                        userinput = userinput + '/';
                        setState(() {});
                      },
                      Buttoncolor: Color(0xffffa00a),
                      TextColor: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonCalculator(
                      title: '7',
                      onPress: () {
                        userinput = userinput + '7';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '8',
                      onPress: () {
                        userinput = userinput + '8';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '9',
                      onPress: () {
                        userinput = userinput + '9';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: 'x',
                      onPress: () {
                        userinput = userinput + 'x';
                        setState(() {});
                      },
                      Buttoncolor: Color(0xffffa00a),
                      TextColor: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonCalculator(
                      title: '4',
                      onPress: () {
                        userinput = userinput + '4';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '5',
                      onPress: () {
                        userinput = userinput + '5';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '6',
                      onPress: () {
                        userinput = userinput + '6';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '-',
                      onPress: () {
                        userinput = userinput + '-';
                        setState(() {});
                      },
                      Buttoncolor: Color(0xffffa00a),
                      TextColor: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonCalculator(
                      title: '1',
                      onPress: () {
                        userinput = userinput + '1';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '2',
                      onPress: () {
                        userinput = userinput + '2';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '3',
                      onPress: () {
                        userinput = userinput + '3';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '+',
                      onPress: () {
                        userinput = userinput + '+';
                        setState(() {});
                      },
                      Buttoncolor: Color(0xffffa00a),
                      TextColor: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ButtonCalculator(
                      title: '0',
                      onPress: () {
                        userinput = userinput + '0';
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: 'DEL',
                      onPress: () {
                        userinput =
                            userinput.substring(0, userinput.length - 1);
                        setState(() {});
                      },
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '.',
                      onPress: () {},
                      Buttoncolor: Colors.grey,
                      TextColor: Colors.white,
                    ),
                    ButtonCalculator(
                      title: '=',
                      onPress: () {
                        equalpress();
                        setState(() {});
                      },
                      Buttoncolor: Color(0xffffa00a),
                      TextColor: Colors.white,
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  void equalpress() {
    String finaluserinput = userinput;
    finaluserinput = userinput.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
