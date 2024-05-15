import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var Referencias_plecoptera =<Widget>[plecoptera_froehlich1, plecoptera_froehlich2];

var plecoptera_froehlich1 = RichText(
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
        '1. FROEHLICH, Cláudio Gilberto. Plecoptera ',
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
        text: '. Holos Editora, Ribeirão Preto, 2012, 810 p. 257 – 262.',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
);


var plecoptera_froehlich2 = RichText(
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
        '2. FROEHLICH, C. G. Studies on Brazilian Plecoptera 1. Some Gripopterygidae from the Biological Station at Paranapiacaba, State of Sao Paulo. ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
          text: 'Beitrãge zur Neotropischen Fauna',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
          )),
      new TextSpan(
        text: ', v. 6, p. 17-39, 1969.',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
);