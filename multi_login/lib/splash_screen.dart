import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_login/home_screen.dart';
import 'package:multi_login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    void Islogin() async {
      SharedPreferences sp = await SharedPreferences.getInstance();
      bool islogin1 = sp.getBool('Islogin') ?? false;
      if (islogin1 == true) {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        });
      } else if (islogin1 == false) {
        {
          Timer(const Duration(seconds: 3), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          });
        }
      }
    }

    Islogin();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/13914970/pexels-photo-13914970.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
