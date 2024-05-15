import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'familia_body.dart';


class familiaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: buildAppBar(),
      body: familiaBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 20,
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
