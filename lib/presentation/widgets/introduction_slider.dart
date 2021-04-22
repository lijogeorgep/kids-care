
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:kids_care/presentation/Authentication/signIn.dart';
import 'package:kids_care/presentation/widgets/home_form.dart';
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
        backgroundColor: Colors.blue.shade300,
      ),
    );
    slides.add(
      new Slide(
        title: "Oral vaccine",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/images/sliderTwo.jpg",
        backgroundColor: Colors.pink.shade300,
      ),
    );
    slides.add(
      new Slide(
        title: "Better life",
        description:

        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/sliderThree.jpg",
        backgroundColor:Colors.blue.shade300,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
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

