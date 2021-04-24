import 'package:flutter/material.dart';
import 'package:kids_care/presentation/widgets/introduction_slider.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.pink.shade300,Colors.blue.shade300]),
      ),
      child: SplashScreen(


          seconds: 5,
          navigateAfterSeconds: new IntroductionSlider(),
          title: Text(
            'Kids Care',
            style: TextStyle(
              wordSpacing: 5.0,
                fontSize: 40,
                fontFamily: 'Fugaz_One',
                foreground: Paint()..shader = linearGradient),
          ),
          image: new Image.asset('assets/images/splashScreenBaby.png'),

          imageBackground: AssetImage('assets/images/bg_splash.png', ),

          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 80.0,
          loaderColor: Colors.deepPurpleAccent),
    );

  }
}
