import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nav_method_productionlvl/pages/home_screen.dart';
import 'package:nav_method_productionlvl/pages/screen_1.dart';
import 'package:nav_method_productionlvl/pages/screen_2.dart';
import 'package:nav_method_productionlvl/pages/screen_3.dart';
import 'package:nav_method_productionlvl/pages/utils/route.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case (RouteName.homescreen):
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
    case (RouteName.screen1):
      return MaterialPageRoute(
        builder: (context) => Screen1(),
      );
    case (RouteName.screen2):
      return MaterialPageRoute(
        builder: (context) => Screen2(),
      );
    case (RouteName.screen3):
      return MaterialPageRoute(
        builder: (context) => Screen3(),
      );

    default:
      throw Exception('No route defined for ${settings.name}');
  }
}
