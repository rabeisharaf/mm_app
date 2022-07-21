import 'package:flutter/material.dart';
import 'package:mm_app/presentation/screens/onboarding_screen.dart';

class PresentationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
