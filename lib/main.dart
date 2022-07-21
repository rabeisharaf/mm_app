import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mm_app/bluetooth/homeui.dart';
import 'package:mm_app/bluetooth/main_page.dart';
import 'package:mm_app/bluetooth/sensor.dart';
import 'package:mm_app/presentation/main_screen.dart';

import 'HomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PresentationScreen(),
    );
  }
}

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );
