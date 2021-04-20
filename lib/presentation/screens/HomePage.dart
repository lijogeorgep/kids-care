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
        appBar: AppBar(
          title: Text('Kids Care'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            // call toggle from SlideDrawer to alternate between open and close
            // when pressed menu button
          ),
          centerTitle: true,
          backgroundColor: Colors.pink.shade300,
          elevation: 0,
          // automaticallyImplyLeading: false,
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pageview1.jpg',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pageview2.jpg',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pageview3.jpg',
                              fit: BoxFit.fitWidth,
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
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 110,
                                height: 110,
                                child: NeumorphicButton(
                                  style: NeumorphicStyle(
                                    depth: 5,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.blue.shade300,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(100),
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
                                        fontSize: 20,
                                      ),
                                      style: NeumorphicStyle(
                                          depth: 2,
                                          shadowDarkColor: Colors.black,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 110,
                                child: NeumorphicButton(
                                  style: NeumorphicStyle(
                                    depth: 5,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.blue.shade300,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(100),
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
                              ),
                              Container(
                                width: 110,
                                height: 110,
                                child: NeumorphicButton(
                                  style: NeumorphicStyle(
                                    depth: 5,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.blue.shade300,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(100),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 110,
                                height: 110,
                                child: NeumorphicButton(
                                  style: NeumorphicStyle(
                                    depth: 5,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.blue.shade300,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(100),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FourteenWeeks()));
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
                              ),
                              Container(
                                width: 110,
                                height: 110,
                                child: NeumorphicButton(
                                  style: NeumorphicStyle(
                                    depth: 5,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.blue.shade300,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(100),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SixToTwelve()));
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
                              ),
                              Container(
                                width: 110,
                                height: 110,
                                child: NeumorphicButton(
                                  style: NeumorphicStyle(
                                    depth: 5,
                                    shadowDarkColor: Colors.black,
                                    color: Colors.blue.shade300,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(100),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OneToEighteen()));
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
                              ),
                            ],
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

        /// menu drawer
        /*drawer: Container(
          // width:MediaQuery.of(context).size.width/2,
          child: Drawer(
            child: Container(
              color: Colors.blue.shade300,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                    ),
                    child: DrawerHeader(
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            image:
                                AssetImage('assets/images/kids-care-logo.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'itme1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'itme2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'itme3',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),*/
      ),
    );
  }
}
