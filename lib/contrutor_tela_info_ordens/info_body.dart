import 'dart:ui';

import 'package:ChaveamentoInsetos/construtor_classifica_ordem/ordem_classifica_screen.dart';
import 'package:ChaveamentoInsetos/contrutor_tela_info_ordens/info_disponibilidade.dart';
import 'package:ChaveamentoInsetos/contrutor_tela_info_ordens/info_fullscreen.dart';
import 'package:page_transition/page_transition.dart';
import '../referencias.dart';
import 'info_botao_referencia.dart';
import 'info_imagem.dart';
import '../listaordens.dart';
import 'package:flutter/material.dart';
import 'package:ChaveamentoInsetos/constants.dart';
import 'info_botaoclassificar.dart';
import 'info_header.dart';
import 'package:flutter/services.dart' show rootBundle;

class infoBody extends StatefulWidget {
  final int index;

  infoBody({Key key, @required this.index}) : super(key: key);

  @override
  _infoBody createState() => _infoBody(index: index);
}

class _infoBody extends State<infoBody> {
  final int index;

  _infoBody({Key key, @required this.index}) : super();

  ListaOrdens listaOrdens = new ListaOrdens();
  String descricao = '';
  String referencia = '';
  infoDisponibilidade disponibilidade = new infoDisponibilidade();

  @override
  fetchFileData() async {
    String responseText;

    responseText = await rootBundle.loadString('assets/textos/' +
        listaOrdens.listaordens.elementAt(index).toLowerCase() +
        '.xml');

    setState(() {
      descricao = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double horizontal;
    if (size.height > size.width) {
      horizontal = 85;
    } else {
      horizontal = 95;
    }

    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 40),
          height: size.height * 0.95,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 1.1 * horizontal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: kDefaultPadding),
                infoBotaoClassificar(
                    title: listaOrdens.listaordens.elementAt(index),
                    index: index,
                    press: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: OrdemClassificaScreen(
                              index: index,
                            ),
                          ),
                        );
                      }
                    }),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Text(
                        //  listaDescricao.listadescricao.elementAt(index),
                        descricao,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Open_Sans',
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20),
                  height: 200,
                  width: size.width,
                  child: ListView.builder(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: disponibilidade.disponibilidade[index],
                    itemBuilder: (BuildContext context, int indicetag) {
                      return FlatButton(
                        child: infoConstrutor(
                            tag: indicetag,
                            numimage: indicetag + 1,
                            index: index,
                            image:
                                "https://raw.githubusercontent.com/evandronk/insecta/master/images/" +
                                    listaOrdens.listaordens[index]
                                        .toLowerCase() +
                                    "/" +
                                    listaOrdens.listaordens[index]
                                        .toLowerCase() +
                                    (indicetag + 1).toString() +
                                    ".png"),
                        onPressed: () {   Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: infoFullScreen(
                              index: index,
                              numimage: indicetag + 1,
                              tag: indicetag,
                            ),
                          ),
                        );

                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                infoBotaoReferencia(
                  title: "Referências:",
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Column(
                    children: Referencias[index],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        infoHeader(
          index: index,
        ),
      ],
    );
  }
}
