import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var Referencias_thysanoptera=<Widget>[thysanoptera_monteiro, thysanoptera_mound];

var thysanoptera_monteiro = RichText(
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
        text:
        '1. MONTEIRO, Renata Chiarini; MOUND, Laurenice Alfred. Thysanoptera ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
        text:
        'In',
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
      new TextSpan(
        text:
        ': RAFAEL, J. A, et. al. ',
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
        text: '. Holos Editora, Ribeirão Preto, 2012, 810 p. 407 – 422.',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
);



var thysanoptera_mound = RichText(
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
        text:
        '2. MOUND, L. A. Thysanoptera: diversity and interactions. ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
          text: 'Annual Review of Entomology',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
          )),
      new TextSpan(
        text: ', v. 50, p. 247-269, 2005. ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
);