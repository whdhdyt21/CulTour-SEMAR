import 'package:cultour/presentation/undevelop/under_development.dart';
import 'package:flutter/material.dart';
import 'package:cultour/views/home_screen.dart';
import 'package:cultour/presentation/go_explore_screen/go_explore_screen.dart';
import 'package:cultour/presentation/guide_container_page/guide_container_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: _getPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: shrineBrown600,
        selectedItemColor: shrineBrown900,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.25),
        selectedLabelStyle: textTheme.bodySmall,
        unselectedLabelStyle: textTheme.bodySmall,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'JELAJAH',
            icon: Icon(Icons.map_outlined),
          ),
          BottomNavigationBarItem(
            label: 'GUIDE',
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: 'PINDAI',
            icon: Icon(Icons.qr_code),
          ),
          BottomNavigationBarItem(
            label: 'KUIS',
            icon: Icon(Icons.quiz_outlined),
          ),
        ],
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return GoExploreScreen();
      case 1:
        return const GuideContainerPage();
      case 2:
        return const Un_Develop();
      case 3:
        return const HomePage();
      default:
        return Container(); // Handle other cases if necessary
    }
  }
}

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color.fromRGBO(63, 35, 5, 1);
const Color shrineBrown600 = Color.fromRGBO(200, 182, 166, 1);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
