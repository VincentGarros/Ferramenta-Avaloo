import 'package:avaloo_app_02/questions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Tela Inicial;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        heroTag: "btn0",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuestionPage()));
        },
        tooltip: 'Criar novo projeto',
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      body: new Column(children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(45.0, 80.0, 0.0, 0.0),
          child: Row(children: <Widget>[
            Expanded(
              child: RichText(
                text: TextSpan(
                    text: 'Bem vindo\n',
                    style: TextStyle(
                        fontWeight: FontWeight.values[2],
                        fontFamily: 'Helvetica',
                        fontSize: 26,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Seus\nProjetos',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.values[8],
                              fontSize: 51,
                              color: Colors.black))
                    ]),
              ),
            ),
          ]),
        ),
        new Container(
          height: (200.00),
          width: (200.00),
          margin: EdgeInsets.fromLTRB(0.0, 50.0, 110.0, 0.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(6.00, 7.00),
                color: Colors.black.withOpacity(0.20),
                blurRadius: (6),
              ),
            ],
            borderRadius: BorderRadius.circular((20.00)),
          ),
          padding: EdgeInsets.fromLTRB(13.0, 70.0, 0.0, 0.0),
          child: RichText(
            text: TextSpan(
                text: 'Projeto\n',
                style: TextStyle(
                    fontWeight: FontWeight.values[8],
                    fontFamily: 'Helvetica',
                    fontSize: 30,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'App Consultoria',
                      style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.values[2],
                          fontSize: 23,
                          color: Colors.black))
                ]),
          ),
        )
      ]),
    );
  }
}
