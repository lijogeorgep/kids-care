import 'package:flutter/material.dart';

class TenWeeks extends StatefulWidget {
  @override
  _TenWeeksState createState() => _TenWeeksState();
}

class _TenWeeksState extends State<TenWeeks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title: Text('Vaccines after ten weeks'),
      ),
      body: SafeArea(
        child: Container(
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
                        'Diptheria, Tetanus and Pertusis vaccine (DTP 2)',
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
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Haemophilus Influenzae Type B (HiB 2)',
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
              TableRow(
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Inactivated Polio Vaccine (IPV**2)',
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
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Hepatitis B (HB 3)',
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
                    child: Center(child: Text('Hep B')),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Rotavirus 2',
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
                    child: Center(child: Text('Rotavirus')),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Pneumococcal Conjugate Vaccine (PCV 2)',
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
      ),
    );
  }
}
