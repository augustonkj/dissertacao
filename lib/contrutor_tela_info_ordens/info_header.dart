import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../listaordens.dart';

class infoHeader extends StatelessWidget {
  String titulo;
  ListaOrdens ORDEM = new ListaOrdens();

  infoHeader({Key key, this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double tamanhologo = 0.1;
    if (size.height > size.width) {
      tamanhologo = 0.1;
    } else {
      tamanhologo = 0.2;
    }

    if (index == 0) {
      titulo = "Subfilo Hexápoda";
    } else if (index > 8 && index < 12) {
      titulo = "Subordem " + ORDEM.listaordens[index];
    } else if (index > 0 && index < 33) {
      titulo = "Ordem " + ORDEM.listaordens[index];
    }

    return Stack(children: <Widget>[
      Container(
        // It will cover 20% of our total height
        height: 140,
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding,
                top: 50,
              ),
              height: size.height * 0.85,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.75,
                    child: AutoSizeText(
                      titulo,
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                      maxLines: 1,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: size.height * tamanhologo,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
