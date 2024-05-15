import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'info_body.dart';

// ignore: camel_case_types
class infoScreen extends StatelessWidget {
  final int index;
  infoScreen({Key key, @required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: buildAppBar(),
      body: infoBody(index: index),
    );
  }

  AppBar buildAppBar() {
    return new AppBar(
      leading: Container(),
      toolbarHeight: 20,
      elevation: 0,
    );
  }
}
