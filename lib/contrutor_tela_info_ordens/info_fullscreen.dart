import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../listaordens.dart';
import 'info_header.dart';

class infoFullScreen extends StatelessWidget {
  infoFullScreen(
      {Key key,
      @required this.index,
      @required this.numimage,
      @required this.tag})
      : super(key: key);
  final int index;
  final int numimage;
  final int tag;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double altura;
    double largura;

    if (size.height > size.width) {
      altura = size.height;
      largura = size.width;
    } else {
      altura = size.width;
      largura = size.height;
    }

    ListaOrdens listaOrdens = new ListaOrdens();

    return Scaffold(
     // appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            infoHeader(
              index: index,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Hero(
                tag: tag,
                child: InteractiveViewer(
                  child: Container(
                    width: double.infinity,
                    height: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://raw.githubusercontent.com/evandronk/insecta/master/images/" +
                                listaOrdens.listaordens[index].toLowerCase() +
                                "/" +
                                listaOrdens.listaordens[index].toLowerCase() +
                                numimage.toString() +
                                ".png"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: (altura - largura) / 2),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 40,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
