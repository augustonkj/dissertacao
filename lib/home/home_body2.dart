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

    rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600))
          ..addStatusListener((status) async {
            if (status == AnimationStatus.completed) {


              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: OrdemClassificaScreen(
                        index: 0,
                      ),
                  ),
              );
              await Future.delayed(const Duration(milliseconds: 400), () {
                texto = true;
                scaleController.reset();
                setState(() {});
              });
            }
          });

    rippleAnimation = Tween<double>(
      begin: 200.0,
      end: 210.0,
    ).animate(rippleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          rippleController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          rippleController.forward();
        }
      });

    scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 15.0,
    ).animate(scaleController);

    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          homeHeader(),

          SizedBox(
            height: 50,
          ),

          Container(
            height: 240,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: AnimatedBuilder(
                      animation: rippleAnimation,
                      builder: (context, child) => Container(
                        alignment: Alignment.center,
                        width: rippleAnimation.value,
                        height: rippleAnimation.value,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: voltarColor,
                          ),
                          child: InkWell(
                            onTap: () async {
                              texto = false;
                              setState(() {});
                              scaleController.forward();
                            },
                            child: AnimatedBuilder(
                              animation: scaleAnimation,
                              builder: (context, child) => Transform.scale(
                                scale: scaleAnimation.value,
                                child: Container(
                                  width: rippleAnimation.value,
                                  height: rippleAnimation.value,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: texto,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            child: Text(
                              'Iniciar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              texto = false;
                              setState(() {});
                              scaleController.forward();
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            child: Text(
                              'Chaveamento',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              texto = false;
                              setState(() {});
                              scaleController.forward();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Spacer(),
          //SizedBox(height: 150),
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
              title: "Ordens e Subordens",
              press: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: familiaScreen(

                    ),
                  ),

                );
              },
            ),
          ),
          SizedBox(height: 2 * kDefaultPadding),
        ],
      ),
    );
  }
}
