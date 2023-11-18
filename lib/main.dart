import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cultour/theme/theme_helper.dart';
import 'package:cultour/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'cultour',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.openScreen,
      // home: const MyHomePage(),
      routes: AppRoutes.routes,

    );
  }
}

