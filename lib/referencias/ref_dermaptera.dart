import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var Referencias_dermaptera =<Widget>[dermaptera_costa,dermaptera_cruz,dermaptera_hass ];




var dermaptera_costa = RichText(
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
        'COSTA, V. A.; BERTI FILHO, E.; MAKHOUL, M. F. ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
        text:
        'Marava ',
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
      new TextSpan(
        text:
        'sp. ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
          text: '(Dermaptera: Labiidae), predador do ácaro hematófago em aviários. ',
          style: new TextStyle(
            fontWeight: FontWeight.normal,
          )),
      new TextSpan(
        text: 'Revista de Agricultura',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      new TextSpan(
          text: ', v. 69, p. 230-242, 1994.',
          style: new TextStyle(
            fontWeight: FontWeight.normal,
          )),
    ],
  ),
);

var dermaptera_cruz = RichText(
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
        'CRUZ, I.; ALVARENGA, C.; FIGUEIREDO, P. Biologia de ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
        text:
        'Doru luteipes ',
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
      new TextSpan(
        text:
        '(Scudder) e sua capacidade predatória de ovos de',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
          text: 'Helicoverpa zea ',
          style: new TextStyle(
            fontStyle: FontStyle.italic,
          )),
      new TextSpan(
        text: '(Boddie). ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      new TextSpan(
          text: 'Anais da Sociedade Entomológica do Brasil',
          style: new TextStyle(
            fontWeight: FontWeight.normal,
          )),
      new TextSpan(
        text: ', v. 24, p. 273-278, 1995.. ',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
);

var dermaptera_hass = RichText(
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
        'HASS, Fabian. Dermaptera ',
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
        text: '. Holos Editora, Ribeirão Preto, 2012, 810 p. 279 – 306.',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  ),
);