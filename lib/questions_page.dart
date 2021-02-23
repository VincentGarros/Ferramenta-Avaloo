import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avaloo_app_02/questions.dart';
import 'package:avaloo_app_02/result.dart';
import 'package:avaloo_app_02/calc_method.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPage createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionPage> {
  final controller = PageController(initialPage: 0);

  CalcMethod calcMethod = CalcMethod();

  bool finalPage = false;

  showAlertDialog2(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Cancelar"),
      onPressed: () {},
    );
    Widget continuaButton = FlatButton(
      child: Text("Continar"),
      onPressed: () {},
    );

    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Deseja continuar aprendendo Flutter ?"),
      actions: [
        cancelaButton,
        continuaButton,
      ],
    );

    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  isEnd(int index) {
    if (index == 4) {
      setState(() {
        finalPage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: finalPage
          ? Padding(
              padding: EdgeInsets.fromLTRB(43.0, 10.0, 10.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "btn3",
                    onPressed: () {},
                    child: Icon(Icons.save),
                    tooltip: 'Salvar Projeto',
                    backgroundColor: Colors.black,
                  ),
                  FloatingActionButton(
                    heroTag: "btn5",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionPage()));
                    },
                    child: Icon(Icons.edit),
                    tooltip: 'Editar Informações',
                    backgroundColor: Colors.black,
                  ),
                  FloatingActionButton(
                    heroTag: "btn6",
                    onPressed: () {},
                    child: Icon(Icons.delete),
                    tooltip: 'Excluir Projeto',
                    backgroundColor: Colors.black,
                  )
                ],
              ),
            )
          : FloatingActionButton(
              //ELSE
              heroTag: "btn4",
              onPressed: () {
                controller.nextPage(
                    duration: Duration(milliseconds: 200), curve: SawTooth(1));
              },
              tooltip: 'Próximo',
              backgroundColor: Colors.black,
              child: Icon(Icons.arrow_right),
            ),
      body: PageView(
        controller: controller,
        onPageChanged: isEnd,
        children: <Widget>[
          Question(
              text: 'Valor total\n' 'do orçamento',
              onChange: (value) {
                setState(() {
                  calcMethod.ont = value;
                });
              }),
          Question(
              text: 'Valor gasto\n' 'até o momento',
              onChange: (value) {
                setState(() {
                  calcMethod.ont_2 = value;
                });

              }),
          Question(
              text: 'Prazo\n' 'planejado',
              onChange: (value03) {
                setState(() {
                  calcMethod.tt = value03;
                });

              }),
          Question(
              text: 'Prazo\n' 'cumprido',
              onChange: (value04) {
                setState(() {
                  calcMethod.ont = value04;
                });
              }),
          Result(
            calcMethod: calcMethod,
          )
        ],
      ),
    );
  }
}
