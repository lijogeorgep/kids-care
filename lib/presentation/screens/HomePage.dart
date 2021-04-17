import 'dart:async';

import 'package:flutter/material.dart';

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
        body: Container(
          height: MediaQuery.of(context).size.height / 4 * 1.15,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    children: [
                      PageView(
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/pageview1.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/pageview2.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/pageview3.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.fitWidth,
                          ),

                        ],
                      ),
                      Center(child: Text('OPV'))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Container(
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
        ),
      ),
    );
  }
}
