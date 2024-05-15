import 'package:ChaveamentoInsetos/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'ordem_classifica_body.dart';

class OrdemClassificaScreen extends StatefulWidget {
  final int index;
  const OrdemClassificaScreen({Key key, @required this.index})
      : super(key: key);
  _OrdemClassificaScreen createState() => _OrdemClassificaScreen(index: index);
}

class _OrdemClassificaScreen extends State<OrdemClassificaScreen> {
  _OrdemClassificaScreen({Key key, @required this.index});
  final int index;

  Future<bool> _fechar() async {
    return showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: Text(
                  'Sair do chaveamento?',
                ),
                actions: <Widget>[
                  RaisedButton(
                    color: kPrimaryColor,
                    child: Text(
                      'Sim',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                  ),
                  RaisedButton(
                    color: kPrimaryColor,
                    child: Text(
                      'Não',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                  ),
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _fechar,
      child: Scaffold(
        // appBar: buildAppBar(),
        body: OrdemClassificaBody(index: index),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 20,
      centerTitle: true,
      elevation: 0,
      leading: Container(),
    );
  }
}
