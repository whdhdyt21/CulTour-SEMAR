import 'package:flutter/material.dart';
import 'package:cultour/presentation/open_screen/open_screen.dart';
import 'package:cultour/presentation/register_screen/register_screen.dart';
import 'package:cultour/presentation/go_explore_screen/go_explore_screen.dart';
import 'package:cultour/presentation/register_one_screen/register_one_screen.dart';
import 'package:cultour/bottom_bar.dart';

import '../presentation/cultour_qr/CulTour_QR.dart';

class AppRoutes {
  static const String openScreen = '/open_screen';

  static const String registerScreen = '/register_screen';

  static const String guideContainerPage = '/guide_container_page';

  static const String guideContainer1Screen = '/guide_container1_screen';

  static const String goExploreScreen = '/go_explore_screen';

  static const String scanScreen = '/CulTour_QR';

  static const String quizScreen = '/quiz_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String bottomBar = '/bottom_bar';

  static Map<String, WidgetBuilder> routes = {
    openScreen: (context) => const OpenScreen(),
    registerScreen: (context) => RegisterScreen(),
    goExploreScreen: (context) => GoExploreScreen(),
    registerOneScreen: (context) => RegisterOneScreen(),
    bottomBar: (context) => const MyHomePage(),
    scanScreen: (context) => const CulTour_QR()
  };
}
