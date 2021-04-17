import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: TabBarView(
          children: [Center(child: Text('IPV')), Center(child: Text('OPV'))],
        ),
        drawer: Container(
          // width:MediaQuery.of(context).size.width/2,
          child: Drawer(
            child: Container(
              color: Colors.pink.shade300,
              child: ListView(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: DrawerHeader(child: Text('Header section'))),
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
