import 'package:ChaveamentoInsetos/agradecimentos/agradecimentos.dart';
import 'package:ChaveamentoInsetos/constants.dart';
import 'package:flutter/material.dart';


class agradecimentosscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(


      body: agradecimentos(),


    );
  }


}
