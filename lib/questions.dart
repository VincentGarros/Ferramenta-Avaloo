import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final text;
  final Function onChange;
  const Question({Key key, this.text, this.onChange}) : super(key: key);
  @override
  _QuestionState createState() => _QuestionState();

}

class _QuestionState extends State<Question> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:
        Column(children: <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(0.0, 25.0, 55.0, 0.0),
        child: RichText(
          text: TextSpan(
              text: 'Insira o\n',
              style: TextStyle(
                  fontWeight: FontWeight.values[2],
                  fontFamily: 'Helvetica',
                  fontSize: 28,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: widget.text,
                    style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.values[8],
                        fontSize: 37,
                        color: Colors.black))
              ]),
        ),
      ),
      Column(children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 80.0),
          child: Center(
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: widget.onChange,
            ),
          ),
        ),
      ]),
    ]));
  }
}

