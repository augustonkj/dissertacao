import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var Referencias_psocodea =<Widget>[psocodea];


var psocodea = RichText(
  textAlign: TextAlign.justify,
  text: new TextSpan(
    style: new TextStyle(
      fontFamily: 'Open_Sans',
      height: 1.5,
      fontSize: 11.0,
      color: Colors.black,
    ),
    children: <TextSpan>[
      new TextSpan(
        text: '1 editar . ALE-ROCHA, Rosaly; ADIS, Joachim Ulrich. Archaeognatha ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
        text: 'In',
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
      new TextSpan(
        text: ': RAFAEL, J. A, et. al. ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
          text: ' Insetos do Brasil - Diversidade e Taxonomia',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
          )),
      new TextSpan(
        text: '. Holos Editora, Ribeirão Preto, 2012, 810 p. 219 – 224.',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
);
