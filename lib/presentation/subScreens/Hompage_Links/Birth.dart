import 'package:flutter/material.dart';
class Birth extends StatefulWidget {
  @override
  _BirthState createState() => _BirthState();
}

class _BirthState extends State<Birth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title: Text('Birth vaccines'),),
      body:  SafeArea(
        child: Container(

          margin:const EdgeInsets.all(8.0),
          child: Table(
              border: TableBorder.all(),
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Container(
                      height: 50,
color: Colors.blue.shade300,
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Vaccines',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white), textAlign: TextAlign.center,),
                      )),
                    ),
                    TableCell(

                      child: Container(
                        height: 50,
                        color: Colors.blue.shade300,
                        padding: const EdgeInsets.all(5.0),

                        child: Text('Doses',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),textAlign: TextAlign.center),
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue.shade300,
                      padding: const EdgeInsets.all(5.0),

                      child: Text('Content Tag',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),textAlign: TextAlign.center),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                     height: 50,

                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Bacillus Calmette Guerin(BCG)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
                      ),
                    ),
                    TableCell(

                      child: Container(
                        height: 50,


                        child: Center(child: Text('1')),
                      ),
                    ),
                    Container(
                      height: 50,



                      child: Center(child: Text('BCG')),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      height: 50,

                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Oral polio vaccine (OPV 0)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
                      ),
                    ),
                    TableCell(

                      child: Container(
                        height: 50,


                        child: Center(child: Text('1')),
                      ),
                    ),
                    Container(
                      height: 50,



                      child: Center(child: Text('OPV')),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      height: 50,

                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Hepatitis B (HB 1)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
                      ),
                    ),
                    TableCell(

                      child: Container(
                        height: 50,


                        child: Center(child: Text('1')),
                      ),
                    ),
                    Container(
                      height: 50,



                      child: Center(child: Text('Hep - B')),
                    ),
                  ],
                ),

              ],
            ),
        ),
      ),

    );
  }
}
