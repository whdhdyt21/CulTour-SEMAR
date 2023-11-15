import 'package:flutter/material.dart';
import 'package:cultour/presentation/open_screen/open_screen.dart';
import 'package:cultour/presentation/register_screen/register_screen.dart';
import 'package:cultour/presentation/register_one_screen/register_one_screen.dart';
import 'package:cultour/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String openScreen = '/open_screen';

  static const String registerScreen = '/register_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    openScreen: (context) => OpenScreen(),
    registerScreen: (context) => RegisterScreen(),
    registerOneScreen: (context) => RegisterOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
