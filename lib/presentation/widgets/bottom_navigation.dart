

import 'dart:math';

import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:kids_care/presentation/screens/HomePage.dart';
import 'package:kids_care/presentation/screens/Medicine.dart';
import 'package:kids_care/presentation/screens/doctors.dart';
import 'package:kids_care/presentation/screens/patients.dart';
import 'package:kids_care/presentation/screens/testpage.dart';




class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  Color _color = Colors.black;
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    HomePage(),
    Medicine(),
    Doctors(),
    Patients()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar:

       Theme(
         data:  Theme.of(context).copyWith(
           canvasColor: Colors.redAccent,
         ),
         child: BottomNavigationBar(

            items: [
              BottomNavigationBarItem(
                // icon: ImageIcon(AssetImage('assets/dashboard.png')),
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
               icon: Icon(Icons.access_alarm),
                label: 'Sales',
              ),
              BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
                label: 'Catlog',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
                label: 'Customer',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
       ),
floatingActionButton:
CircularMenu(
  startingAngleInRadian : 1.0 * pi ,
  // last item angle
  endingAngleInRadian : 1.6*pi,
  alignment: Alignment.bottomRight,
  // backgroundWidget: Center(
  //   child: Text('nothing to show'),
  // ),
  toggleButtonColor: Colors.blueGrey[900],
  items: [
    CircularMenuItem(
        icon: Icons.home,
        color: Colors.green,
        onTap: () {
          setState(() {
            _color = Colors.green;
            Navigator.push(context,MaterialPageRoute(builder: (context)=>TestPage()));
            // _colorName = 'Green';

          });
        }),
    CircularMenuItem(
        icon: Icons.search,
        color: Colors.blue,
        onTap: () {
          setState(() {
            _color = Colors.blue;
            // _colorName = 'Blue';
          });
        }),
    CircularMenuItem(
        icon: Icons.settings,
        color: Colors.orange,
        onTap: () {
          setState(() {
            _color = Colors.orange;

            // _colorName = 'Orange';
          });
        }),


  ],
),

    );
  }
}
