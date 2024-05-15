import 'dart:ui';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'home_buttom.dart';
import 'package:flutter/material.dart';
import 'package:ChaveamentoInsetos/constants.dart';
import 'package:ChaveamentoInsetos/home/home_header.dart';
import 'package:ChaveamentoInsetos/ordem_home/familia_screen.dart';
import 'package:ChaveamentoInsetos/contrutor_tela_info_ordens/info_screen.dart';
import 'package:ChaveamentoInsetos/construtor_classifica_ordem/ordem_classifica_screen.dart';

import 'home_texto.dart';

class homeBody extends StatefulWidget {
  _homeBody createState() => _homeBody();
}

class _homeBody extends State<homeBody> with TickerProviderStateMixin {
  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;
  bool texto = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 160,
              ),
              Visibility(
                visible: texto,
                child: homeButtom(
                  title: "Iniciar Chaveamento",
                  press: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: OrdemClassificaScreen(
                          index: 0,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Visibility(
                visible: texto,
                child: homeButtom(
                  title: "Hexapoda",
                  press: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: infoScreen(
                          index: 0,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Visibility(
                visible: texto,
                child: homeButtom(
                  title: "Ordens",
                  press: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: familiaScreen(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
        Container(
          height: 200,
          child: homeHeader(),
        )
      ],
    );
  }
}
