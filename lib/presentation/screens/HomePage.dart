import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:kids_care/presentation/subScreens/Hompage_Links/Birth.dart';
import 'package:kids_care/presentation/subScreens/Hompage_Links/FourteenWeeks.dart';
import 'package:kids_care/presentation/subScreens/Hompage_Links/OneToEighteen.dart';
import 'package:kids_care/presentation/subScreens/Hompage_Links/SixToTwelve.dart';
import 'package:kids_care/presentation/subScreens/Hompage_Links/SixWeeks.dart';
import 'package:kids_care/presentation/subScreens/Hompage_Links/TenWeeks.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 250),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.pink.shade300,
            elevation: 0,
      automaticallyImplyLeading: false,
            bottom: TabBar(
              labelColor: Colors.pink.shade300,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("IPV"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("OPV"),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pageview1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pageview2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pageview3.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          'Type of IPV vaccines',
                          style: TextStyle(
                              color: Colors.pink.shade400,
                              fontSize: 17,
                              fontFamily: 'Fugaz_One'),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NeumorphicButton(
                            style: NeumorphicStyle(
                              depth: 5,
                              shadowDarkColor: Colors.black,
                              color: Colors.blue.shade300,
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Birth()));
                            },
                            child: Center(
                              child: NeumorphicText(
                                'Birth',
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 17,
                                ),
                                style: NeumorphicStyle(
                                    depth: 2,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          NeumorphicButton(
                            style: NeumorphicStyle(
                              depth: 5,
                              shadowDarkColor: Colors.black,
                              color: Colors.blue.shade300,
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SixWeeks()));
                            },
                            child: Center(
                              child: NeumorphicText(
                                '6 weeks',
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 17,
                                ),
                                style: NeumorphicStyle(
                                    depth: 2,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          NeumorphicButton(
                            style: NeumorphicStyle(
                              depth: 5,
                              shadowDarkColor: Colors.black,
                              color: Colors.blue.shade300,
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TenWeeks()));
                            },
                            child: Center(
                              child: NeumorphicText(
                                '10 weeks',
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 17,
                                ),
                                style: NeumorphicStyle(
                                    depth: 2,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          NeumorphicButton(
                            style: NeumorphicStyle(
                              depth: 5,
                              shadowDarkColor: Colors.black,
                              color: Colors.blue.shade300,
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FourteenWeeks()));
                            },
                            child: Center(
                              child: NeumorphicText(
                                '14 weeks',
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 17,
                                ),
                                style: NeumorphicStyle(
                                    depth: 2,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          NeumorphicButton(
                            style: NeumorphicStyle(
                              depth: 5,
                              shadowDarkColor: Colors.black,
                              color: Colors.blue.shade300,
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SixToTwelve()));
                            },
                            child: Center(
                              child: NeumorphicText(
                                '6 - 12 months',
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 17,
                                ),
                                style: NeumorphicStyle(
                                    depth: 2,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          NeumorphicButton(
                            style: NeumorphicStyle(
                              depth: 5,
                              shadowDarkColor: Colors.black,
                              color: Colors.blue.shade300,
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OneToEighteen()));
                            },
                            child: Center(
                              child: NeumorphicText(
                                '1 - 18 years',
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 17,
                                ),
                                style: NeumorphicStyle(
                                    depth: 2,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /// opv section....
              Center(child: Text('OPV')),
            ],
          ),
        ),
      ),
    );
  }
}
