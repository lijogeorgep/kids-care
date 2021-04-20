import 'package:flutter/material.dart';
class SixWeeks extends StatefulWidget {
  @override
  _SixWeeksState createState() => _SixWeeksState();
}

class _SixWeeksState extends State<SixWeeks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title: Text('Vaccines after six weeks'),),
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
                    // height: 50,

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('Diptheria, Tetanus and Pertusis vaccine (DTP)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
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
                    height: 50,

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('Inactivated Polio Vaccine (IPV**1)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
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
                    height: 50,

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('Hepatitis B (HB 2)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
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
              TableRow(
                children: <Widget>[
                  Container(


                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('Heamophilus Influenza Type B (HiB 1)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
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
                      child: Text('Rotavirus 1',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
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
                      child: Text('Pneumococcal Conjugate Vaccine (PCV 1)',style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
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
