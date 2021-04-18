import 'package:flutter/material.dart';
import 'package:kids_care/presentation/screens/HomePage.dart';
import 'package:kids_care/presentation/widgets/introduction_slider.dart';
import 'package:kids_care/presentation/widgets/splash_screen.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
      // theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey.shade100),
    );
  }
}
