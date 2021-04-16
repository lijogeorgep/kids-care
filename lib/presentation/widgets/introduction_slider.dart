
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import '../widgets/bottom_navigation.dart';
class IntroductionSlider extends StatefulWidget {
  @override
  _IntroductionSliderState createState() => _IntroductionSliderState();
}

class _IntroductionSliderState extends State<IntroductionSlider> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        // styleTitle: TextStyle(color: Colors.blueGrey,fontSize: 40),
        title: "Vaccination",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/images/sliderOne.jpg",
        backgroundColor: Color(0xfFFFFFF),
      ),
    );
    slides.add(
      new Slide(
        title: "Oral vaccine",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/images/sliderTwo.jpg",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "Better life",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/sliderThree.jpg",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntroSlider(
        slides: this.slides,
        onDonePress: this.onDonePress,
      ),
    );
  }
}

