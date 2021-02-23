import 'package:flutter/material.dart';
import 'package:avaloo_app_02/calc_method.dart';
import 'package:avaloo_app_02/questions.dart';
import 'package:avaloo_app_02/questions_page.dart';

class Result extends StatefulWidget {
  final CalcMethod calcMethod;

  const Result({Key key, this.calcMethod}) : super(key: key);
  @override
  _Result createState() => _Result();
}

class _Result extends State<Result> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:
        Column(children: <Widget>[
      Container(
       padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'Seu prazo está\n',
              style: TextStyle(
                  fontWeight: FontWeight.values[2],
                  fontFamily: 'Helvetica',
                  fontSize: 20,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: widget.calcMethod.prazo(),
                    style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.values[8],
                        fontSize: 40,
                        color: Colors.black))
              ]),
        ),
      ),

          Container(
            //Divisor
            height: 1,
            width: 300,
            color: Colors.grey,
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 80.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Seu orçamento está\n',
                  style: TextStyle(
                      fontWeight: FontWeight.values[2],
                      fontFamily: 'Helvetica',
                      fontSize: 20,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'ACIMA DO\n' 'CUSTO',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.values[8],
                            fontSize: 40,
                            color: Colors.black))
                  ]),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 80.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Variação de prazo: ',
                  style: TextStyle(
                      fontWeight: FontWeight.values[2],
                      fontFamily: 'Helvetica',
                      fontSize: 20,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: '-33,3',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.values[8],
                            fontSize: 20,
                            color: Colors.black))
                  ]),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 80.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Variação de custo: ',
                  style: TextStyle(
                      fontWeight: FontWeight.values[2],
                      fontFamily: 'Helvetica',
                      fontSize: 20,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: '-3,3',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.values[8],
                            fontSize: 20,
                            color: Colors.black))
                  ]),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 80.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Desempenho de custo: ',
                  style: TextStyle(
                      fontWeight: FontWeight.values[2],
                      fontFamily: 'Helvetica',
                      fontSize: 20,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: '0,83',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.values[8],
                            fontSize: 20,
                            color: Colors.black))
                  ]),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 80.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Desempenho de prazo: ',
                  style: TextStyle(
                      fontWeight: FontWeight.values[2],
                      fontFamily: 'Helvetica',
                      fontSize: 20,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: '0,3',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.values[8],
                            fontSize: 20,
                            color: Colors.black))
                  ]),
            ),
          ),
    ]));
  }
}