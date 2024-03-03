import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      animationCurve: Curves.easeInOutCubicEmphasized,
                      obscureText: true,
                      obscuringCharacter: '#',
                      keyboardAppearance: Brightness.dark,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeColor: Colors.deepPurple,
                      ),
                      onChanged: (value) {}),
                )
              ],
            ),
          ),
        ));
  }
}
// AnimatedTextKit(
//                     onTap: () {},
//                     repeatForever: true,
//                     animatedTexts: [
//                       RotateAnimatedText('Rotate',
//                           textStyle: TextStyle(
//                               fontSize: 55, color: Colors.deepOrangeAccent)),
//                       RotateAnimatedText('The',
//                           textStyle: TextStyle(
//                               fontSize: 55, color: Colors.deepOrangeAccent)),
//                       RotateAnimatedText('Text',
//                           textStyle: TextStyle(
//                               fontSize: 55, color: Colors.deepOrangeAccent)),
//                     ]),
// Badge(
//                     child: Icon(FontAwesomeIcons.amazonPay),
//                     label: Text('1'),
//                     alignment: AlignmentDirectional(16, -14),)
