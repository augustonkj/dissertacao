import 'package:ChaveamentoInsetos/contrutor_tela_info_ordens/info_screen.dart';
import '../listaordens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../constants.dart';
import 'familia_title.dart';
import 'familia_header.dart';

class familiaBody extends StatelessWidget {
  ListaOrdens listaOrdem = new ListaOrdens();
  List<String> listaPrefixo = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double tamanhologo = 0.12;
    if (size.height > size.width) {
      tamanhologo = 0.125;
    } else {
      tamanhologo = 0.25;
    }

    for (int i = 0; i < listaOrdem.listaordens.length; i++) {
      listaPrefixo.add('Ordem ');
    }

    for (int i = 0; i < listaOrdem.listaordens.length; i++) {
      if (listaOrdem.listaordens.elementAt(i) == "Auchenorrhyncha" ||
          listaOrdem.listaordens.elementAt(i) == "Sternorrhyncha" ||
          listaOrdem.listaordens.elementAt(i) == "Heteroptera") {
        listaPrefixo[i] = 'Subordem ';
      }
    }

    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 40),
          height: size.height * 0.95,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 6,
              );
            },
            padding: EdgeInsets.only(
                top: size.height * tamanhologo, bottom: size.height * 0.05),
            itemCount: listaOrdem.listaordens.length - 1,
            itemBuilder: (context, index) {
              return Card(
                color: kBackgroundColor,
                elevation: 0,
                child: TitleWithMoreBtn(
                  title: listaPrefixo[index + 1] +
                      listaOrdem.listaordens[index + 1],
                  press: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: infoScreen(
                          index: index + 1,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        ordemHeader(),
      ],
    );
  }
}
