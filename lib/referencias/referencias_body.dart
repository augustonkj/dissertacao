
import 'package:ChaveamentoInsetos/referencias/ref_archeognatha.dart';
import 'package:ChaveamentoInsetos/referencias/ref_auchenorrhyncha.dart';
import 'package:ChaveamentoInsetos/referencias/ref_blattaria.dart';
import 'package:ChaveamentoInsetos/referencias/ref_coleoptera.dart';
import 'package:ChaveamentoInsetos/referencias/ref_hexapoda.dart';
import 'package:ChaveamentoInsetos/referencias/referencias_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class referencias_body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;



    return Stack(
children: <Widget>[

       Container(
         margin: EdgeInsets.only(top: 20),
         padding: EdgeInsets.all(20),
         alignment: Alignment.center,
         child: SingleChildScrollView(child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Card(
               elevation: 0,
               child:
               Column(children: <Widget>[
               Row(
                 children: <Widget>[
                   SizedBox(width:20, child: Icon(Icons.menu_book, color: kPrimaryColor,),),
                   SizedBox(width: 20,),
                   Text('Hexapoda')
                 ],
               ),
                 Container(

 padding: EdgeInsets.only(left: 40, right: 20),
                   child:  Column(children:Referencias_hexapoda),

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
    SizedBox(width:20, child: Icon(Icons.menu_book, color: kPrimaryColor,),),
    SizedBox(width: 20,),
    Text('Archaeognatha')
    ],
    ),
    Container(

    padding: EdgeInsets.only(left: 40, right: 20),
    child:  Column(children:Referencias_archaeognatha),

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
                     SizedBox(width:20, child: Icon(Icons.menu_book, color: kPrimaryColor,),),
                     SizedBox(width: 20,),
                     Text('Auchenorryncha')
                   ],
                 ),
                 Container(

                   padding: EdgeInsets.only(left: 40, right: 20),
                   child:  Column(children:Referencias_auchenorryncha),

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
                     SizedBox(width:20, child: Icon(Icons.menu_book, color: kPrimaryColor,),),
                     SizedBox(width: 20,),
                     Text('Blattaria')
                   ],
                 ),
                 Container(

                   padding: EdgeInsets.only(left: 40, right: 20),
                   child:  Column(children:Referencias_blattaria),

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
                     SizedBox(width:20, child: Icon(Icons.menu_book, color: kPrimaryColor,),),
                     SizedBox(width: 20,),
                     Text('Coleoptera')
                   ],
                 ),
                 Container(

                   padding: EdgeInsets.only(left: 40, right: 20),
                   child:  Column(children:Referencias_coleoptera),

                 ),
               ],
               ),
             ),
             Container(height: 30,),



           ],
         ),),
         color: Colors.white,
       ),
  referencias_header(),
    ],
    );
  }
}
