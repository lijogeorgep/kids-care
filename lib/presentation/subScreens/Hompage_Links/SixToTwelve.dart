import 'package:flutter/material.dart';

class SixToTwelve extends StatefulWidget {
  @override
  _SixToTwelveState createState() => _SixToTwelveState();
}

class _SixToTwelveState extends State<SixToTwelve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title: Text('Vaccines between 6 - 12 months'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                  child: Text('6 months',style:TextStyle(
                      color: Colors.pink.shade400,
                      fontSize: 18,
                      fontFamily: 'Fugaz_One'),)),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(),
                  children: <TableRow>[
                    TableRow(
                      children: <Widget>[
                        Container(
                          height: 50,
                          color: Colors.blue.shade300,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Vaccines',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            color: Colors.blue.shade300,
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Doses',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.blue.shade300,
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Content Tag',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        Container(
                          // height: 50,

                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Influenza OPV',
                              style: TextStyle(fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('12')),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: Center(child: Text('OPV')),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Text('9 to 12 months',style:TextStyle(
                      color: Colors.pink.shade400,
                      fontSize: 18,
                      fontFamily: 'Fugaz_One'),)),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(),
                  children: <TableRow>[
                    TableRow(
                      children: <Widget>[
                        Container(
                          height: 50,
                          color: Colors.blue.shade300,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Vaccines',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            color: Colors.blue.shade300,
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Doses',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.blue.shade300,
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Content Tag',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        Container(
                          // height: 50,

                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Measles,Mumps and Rubella (MMR 1)',
                              style: TextStyle(fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
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
                          child: Center(child: Text('MMR')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        Container(
                          // height: 50,

                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Typhoid Conjugate Vaccine',
                              style: TextStyle(fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
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
                          child: Center(child: Text('TCV')),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Text('12 months',style:TextStyle(
                      color: Colors.pink.shade400,
                      fontSize: 18,
                      fontFamily: 'Fugaz_One'),)),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(),
                  children: <TableRow>[
                    TableRow(
                      children: <Widget>[
                        Container(
                          height: 50,
                          color: Colors.blue.shade300,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Vaccines',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            color: Colors.blue.shade300,
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Doses',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.blue.shade300,
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Content Tag',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        Container(
                          // height: 50,

                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Hepatitis A (Hep A1)',
                              style: TextStyle(fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
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
                          child: Center(child: Text('Hep A')),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
