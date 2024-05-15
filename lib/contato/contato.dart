import 'package:ChaveamentoInsetos/agradecimentos/agradecimentos_header.dart';
import 'package:ChaveamentoInsetos/contato/contato_header.dart';
import 'package:ChaveamentoInsetos/contrutor_tela_info_ordens/info_screen.dart';
import '../listaordens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../constants.dart';


class contato extends StatelessWidget {


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
             Card(
               elevation: 0,
               child:
               Column(children: <Widget>[
               Row(
                 children: <Widget>[
                   SizedBox(width:20, child: Icon(Icons.person, color: kPrimaryColor,),),
                   SizedBox(width: 20,),
                   Text('Antonio Augusto Ignacio')
                 ],
               ),
                 Container(

 padding: EdgeInsets.only(left: 40, right: 20),
                   child:  Text('Graduando em Licenciatura em Ciências Biológicas', maxLines: 2, textAlign: TextAlign.justify,)

                 ),
                 Row(
                   children: <Widget>[
                     SizedBox(width:20,),
                     SizedBox(width: 20,),
                     Text('e-mail: ignacio@alunos.utfpr.edu.br')
                   ],
                 ),
               ],
               ),
       ),
           Container(height: 30,),
             Card(
               elevation: 0,
               child:
               Column(children: <Widget>[
                 Row(
                   children: <Widget>[
                     SizedBox(width:20, child: Icon(Icons.person, color: kPrimaryColor,),),
                     SizedBox(width: 20,),
                     Text('Evandro Alves Nakajima')
                   ],
                 ),
                 Container(

                     padding: EdgeInsets.only(left: 40, right: 20),
                     child:  Text('Prof. Me. pela Universidade Tecnológica Federal do Paraná', maxLines: 2, textAlign: TextAlign.justify,)

                 ),
                 Row(
                   children: <Widget>[
                     SizedBox(width:20,),
                     SizedBox(width: 20,),
                     Text('e-mail: enakajima@utfpr.edu.br')
                   ],
                 ),
               ],
               ),
             ),

             Container(height: 30,),
             Card(
               elevation: 0,
               child:
               Column(children: <Widget>[
                 Row(
                   children: <Widget>[
                     SizedBox(width:20, child: Icon(Icons.person, color: kPrimaryColor,),),
                     SizedBox(width: 20,),
                     Text('Denise Lange')
                   ],
                 ),
                 Container(

                     padding: EdgeInsets.only(left: 40, right: 20),
                     child:  Text('Profa. Dra. pela Universidade Tecnológica Federal do Paraná', maxLines: 2, textAlign: TextAlign.justify,)

                 ),
                 Row(
                   children: <Widget>[
                     SizedBox(width:20,),
                     SizedBox(width: 20,),
                     Text('e-mail: deniselange@utfpr.edu.br')
                   ],
                 ),
               ],
               ),
             ),
           ],
         ),
         color: Colors.white,
       ),
  contatoheader(),
    ],
    );
  }
}
