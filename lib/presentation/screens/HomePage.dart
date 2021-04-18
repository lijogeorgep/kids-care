import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/pageview1.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/pageview2.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/pageview3.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                    ),
                    GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 6.0,
                        shrinkWrap: true,
                        children: List.generate(
                    10,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.0),),
                          ),
                        ),
                      );
                    },
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
