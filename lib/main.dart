import 'package:flutter/material.dart';
import 'package:hotel_booking_mobile_app/pages/home_page.dart';
import 'package:hotel_booking_mobile_app/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/": (context) => OnboardingPage(),
          "/home": (context) => HomePage(),
        }
    );
  }
}
