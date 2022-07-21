import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mm_app/bluetooth/main_page.dart';
import 'package:mm_app/navpages_test_data/sensors/Sensors.dart';
import 'SensorsScreen.dart';
import 'testing/TestPage.dart';

class MainPage extends StatefulWidget {
  const MainPage();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List pages = [
    FlutterBlueApp(),
    TestPage(),
  ];
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              title: Text("Sensors"), icon: Icon(Icons.sensor_window)),
          BottomNavigationBarItem(
              title: Text("Testing"), icon: Icon(Icons.access_alarm)),
        ],
      ),
    );
  }
}
