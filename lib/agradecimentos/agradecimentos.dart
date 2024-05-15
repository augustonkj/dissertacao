import 'package:ChaveamentoInsetos/agradecimentos/agradecimentos_header.dart';
import 'package:ChaveamentoInsetos/contrutor_tela_info_ordens/info_screen.dart';
import '../listaordens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../constants.dart';


class agradecimentos extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;



    return Stack(
children: <Widget>[
       Container(
         padding: EdgeInsets.all(20),
         alignment: Alignment.center,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
           Text('Os desenvolvedores agradecem:',textAlign: TextAlign.left,
         style: TextStyle(fontFamily: 'Open_Sans', fontSize: 16),),
           Container(height: 30,),
         Text('  À Universidade Tecnológica Federal do Paraná pelo suporte e financiamento do registro do aplicativo',textAlign: TextAlign.justify, style: TextStyle(fontFamily: 'Open_Sans', fontSize: 16),),
         Container(height: 20,),
         Text('  Ao Dr. José Albertino Rafael pela autorização da utilização do texto da bibliografia "RAFAEL, J. A. Chave para as ordens – adultos. In: RAFAEL, J. A. et al. (Eds.) Insetos do Brasil: Diversidade e Taxonomia. Ribeirão Preto: Holos Editora, pp. 191-196, 2012” para o chaveamento.',textAlign: TextAlign.justify, style: TextStyle(fontFamily: 'Open_Sans', fontSize: 16),
         ),       ],
         ),
       ),
  agradecimentosheader(),
    ],
    );
  }
}
