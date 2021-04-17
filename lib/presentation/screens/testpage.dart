import 'package:flutter/material.dart';
class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kids Care'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,),
      body: Center(child: Text('Test page'),),
    );
  }
}
