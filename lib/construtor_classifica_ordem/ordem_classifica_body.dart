import 'package:ChaveamentoInsetos/contrutor_tela_info_ordens/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:ChaveamentoInsetos/constants.dart';
import 'package:page_transition/page_transition.dart';
import '../Matriz_Hexapodas.dart';
import 'ordem_classifica_buttom.dart';
import 'ordem_classifica_header.dart';
import '../listaordens.dart';
import 'ordem_classifica_title.dart';

class OrdemClassificaBody extends StatefulWidget {
  OrdemClassificaBody({Key key, this.title, @required this.index})
      : super(key: key);

  final String title;
  final int index;

  @override
  _OrdemClassificaBody createState() => _OrdemClassificaBody(index: index);
}

final controller = PageController();

class _OrdemClassificaBody extends State<OrdemClassificaBody> {
  _OrdemClassificaBody({@required this.index}) : super();
  int index;

  Matriz_Ordem_Hexapoda matrizClassificacao = new Matriz_Ordem_Hexapoda();

  ListaOrdens listaOrdens = new ListaOrdens();

  int indice;

  bool crossfade = false;

  OrdemClassificaBotoes Botoes = new OrdemClassificaBotoes();

  Future<bool> _fechar() async {
    return showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: Text(
                  'Reiniciar o chaveamento?',
                ),
                actions: <Widget>[
                  RaisedButton(
                    color: kPrimaryColor,
                    child: Text(
                      'Sim',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pop(context, false);
                      Botoes.botaoreiniciar();
                      setState(() {});
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
    Botoes.inicializa();

    Size size = MediaQuery.of(context).size;

    double padding = 0.15;
    double horizontal;

    if (size.height > size.width) {
      padding = 0.15;
      horizontal = 0;
    } else {
      padding = 0.25;
      horizontal = 15;
    }

    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 40),
          height: size.height * 0.95,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: size.height * padding),
            controller: controller,
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: horizontal,
                ),
                Center(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        OrdemClassificaTitle(
                          title: listaOrdens.listaordens.elementAt(index),
                          press: () {
                            Botoes.botaodesfazer();
                            setState(() {});
                          },
                          press2: () {
                            _fechar();
                            setState(() {});
                          },
                        ),
                        SizedBox(height: kDefaultPadding),
                        Container(
                          margin:
                              new EdgeInsets.only(top: 10, left: 10, right: 10),
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: double.infinity,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(20.0),
                              onPressed: () {
                                if (Botoes.classificou == true) {
                                  Botoes.indice = listaOrdens.listaordens
                                      .indexOf(Botoes.botao1);

                                  /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          infoScreen(index: Botoes.indice)),
                                );*/

                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child:
                                            infoScreen(index: Botoes.indice)),
                                  );
                                }
                                if (crossfade == false) {
                                  crossfade = true;
                                } else {
                                  crossfade = false;
                                }
                                Botoes.primeirobotao();
                                setState(() {});
                              },
                              child: Stack(
                                children: <Widget>[
                                  Visibility(
                                    visible: Botoes.classificou,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: AnimatedContainer(
                                        curve: Curves.fastOutSlowIn,
                                        duration: Duration(milliseconds: 2000),
                                        child: ClipOval(
                                          child: Material(
                                            color: kPrimaryColor,
                                            // button color
                                            child: InkWell(
                                              splashColor: voltarColor,
                                              // inkwell color

                                              child: Icon(
                                                Icons.arrow_forward,
                                                color: Colors.white,
                                              ),

                                              onTap: () {print(Botoes.indice);
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          infoScreen(
                                                              index: Botoes
                                                                  .indice)),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  AnimatedCrossFade(
                                    crossFadeState: crossfade
                                        ? CrossFadeState.showFirst
                                        : CrossFadeState.showSecond,
                                    duration: Duration(milliseconds: 500),
                                    //firstCurve: Curves.easeInBack,
                                    secondCurve: Curves.easeOut,
                                    sizeCurve: Curves.easeOut,
                                    firstChild: Container(
                                      alignment: Alignment.center,
                                      child: Column(children: [
                                        Text(
                                          Botoes.botao1,
                                          style: TextStyle(
                                              fontFamily: 'Open-Sans',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              height:
                                              1.4 //You can set your custom height here
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Image.asset(Botoes.img1)
                                      ],)
                                    ),
                                    secondChild: Container(
                                      alignment: Alignment.center,
                                      child: Column(children: [
                                        Text(
                                          Botoes.botao1,
                                          style: TextStyle(
                                              fontFamily: 'Open-Sans',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              height:
                                              1.4 //You can set your custom height here
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Image.asset(Botoes.img1)
                                      ],)
                                    ),
                                  ),
                                ],
                              ),
                              color: voltarColor,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: Botoes.visibilidade,
                          child: AnimatedCrossFade(
                            crossFadeState: crossfade
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: Duration(milliseconds: 500),
                            //firstCurve: Curves.easeInBack,
                            secondCurve: Curves.easeOut,
                            sizeCurve: Curves.easeOut,
                            firstChild: Container(
                              margin: new EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: double.infinity,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(20.0),
                                  onPressed: () {
                                    if (crossfade == false) {
                                      crossfade = true;
                                    } else {
                                      crossfade = false;
                                    }
                                    Botoes.segundobotao();
                                    setState(() {});
                                  },
                                  child: Column(children: [Text(
                                    Botoes.botao2,
                                    style: TextStyle(
                                        fontFamily: 'Open-Sans',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        height:
                                            1.4 //You can set your custom height here
                                        ),
                                    textAlign: TextAlign.justify,
                                  ), Image.asset(Botoes.img2)]),
                                  color: voltarColor,
                                ),
                              ),
                            ),
                            secondChild: Container(
                              margin: new EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: double.infinity,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(20.0),
                                  onPressed: () {
                                    Botoes.segundobotao();
                                    setState(() {});
                                  },
                                  child: Column(children: [Text(
                                    Botoes.botao2,
                                    style: TextStyle(
                                        fontFamily: 'Open-Sans',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        height:
                                        1.4 //You can set your custom height here
                                    ),
                                    textAlign: TextAlign.justify,
                                  ), Image.asset(Botoes.img2)]),
                                  color: voltarColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.only(left: 10, top: 30, right: 10),
                          child: Text(
                            "Histórico",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 10, top: 10, right: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(Botoes.historico,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'Open-Sans',
                                fontWeight: FontWeight.normal,
                                fontSize: 12.0,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        OrdemClassificaHeader(
          index: index,
        ),
      ],
    );
  }
}
