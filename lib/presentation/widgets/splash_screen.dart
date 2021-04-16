import 'package:flutter/material.dart';
import 'package:kids_care/presentation/widgets/introduction_slider.dart';
import 'package:splashscreen/splashscreen.dart';
class  SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new IntroductionSlider(),
        title: new Text('Kids Care',style: TextStyle(fontSize: 30,color: Colors.pink.shade500),),
        image: new Image.asset('assets/images/splashScreenBaby.jpg'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red
    );

  }
}
