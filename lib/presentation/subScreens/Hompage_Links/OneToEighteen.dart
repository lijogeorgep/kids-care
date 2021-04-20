import 'package:flutter/material.dart';

class OneToEighteen extends StatefulWidget {
  @override
  _OneToEighteenState createState() => _OneToEighteenState();
}

class _OneToEighteenState extends State<OneToEighteen> {
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
                  child: Text(
                    '13 to 15 months',
                    style: TextStyle(
                        color: Colors.pink.shade400,
                        fontSize: 18,
                        fontFamily: 'Fugaz_One'),
                  )),
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
                              'Measles,Mumps and Rubella (MMR 2)',
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
                              'Varicella 1',
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
                          child: Center(child: Text('Varicella')),
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
                              'PCV Booster 1',
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
                          child: Center(child: Text('PCV')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    '16 to 18 months',
                    style: TextStyle(
                        color: Colors.pink.shade400,
                        fontSize: 18,
                        fontFamily: 'Fugaz_One'),
                  )),
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
                              'Diphtheria, Pertussis and Tetanus (DTP B1)',
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
                          child: Center(child: Text('DTP')),
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
                              'Inactivated Polio Vaccine (IPV ***B1)',
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
                          child: Center(child: Text('IPV')),
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
                              'Hepatitis A(Hep A2)',
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
                    TableRow(
                      children: <Widget>[
                        Container(
                          // height: 50,

                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Heamophilus Influenza Type B (HiB B1',
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
                          child: Center(child: Text('HiB')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    '4 to 6 years',
                    style: TextStyle(
                        color: Colors.pink.shade400,
                        fontSize: 18,
                        fontFamily: 'Fugaz_One'),
                  )),
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
                              'Diphtheria, Pertussis and Tetanus (DTP B2)',
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
                          child: Center(child: Text('DTP')),
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
                              'Varicella 2',
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
                          child: Center(child: Text('Varicella')),
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
                              'Measles, Mumps and Rubella (MMR 3/ MRRV)',
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
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    '9 to 14 years',
                    style: TextStyle(
                        color: Colors.pink.shade400,
                        fontSize: 18,
                        fontFamily: 'Fugaz_One'),
                  )),
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
                              'Tdap',
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
                          child: Center(child: Text('Tdap')),
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
                              'Human Papilloma Virus (HPV 1 & 2)',
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
                          child: Center(child: Text('HPV')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    '15 to 18 years',
                    style: TextStyle(
                        color: Colors.pink.shade400,
                        fontSize: 18,
                        fontFamily: 'Fugaz_One'),
                  )),
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
                              'Tdap',
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
                          child: Center(child: Text('Tdap')),
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
                              'Human Papilloma Virus (HPV 1,2 & 3)',
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
                          child: Center(child: Text('HPV')),
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
