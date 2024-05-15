import 'package:flutter/material.dart';
import '../constants.dart';

class OrdemClassificaHeader extends StatelessWidget {
  OrdemClassificaHeader({Key key,  this.index})
      : super(key: key);


  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String titulo;
    if (index == 0) {
      titulo = "Ordem";
    } else if (index > 0 && index < 33) {
      titulo = "Família";
    }
    double tamanhologo = 0.1;
    if(size.height > size.width ){
      tamanhologo = 0.1;
    }else{
      tamanhologo = 0.2;
    }

    return Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.only(bottom:10),
        height: 140,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding,
                top: 50,
              ),
              height: size.height*0.85 ,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Identifique a ' + titulo,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(height: size.height*tamanhologo,child: Image.asset("assets/images/logo.png"),),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
