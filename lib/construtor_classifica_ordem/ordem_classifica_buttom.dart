

import 'package:ChaveamentoInsetos/listaordens.dart';

import '../Matriz_Hexapodas.dart';

class OrdemClassificaBotoes{



  int indice= 0;
  String botao1 ="";
  String botao2;
  String img1 ="";
  String img2;
  bool classificou = false;
  List<bool> ativou1 = [false];
  List<bool> ativou2 = [false];
  List<String> listadecisoes = [""];
  String historico = "";
  bool sair = false;
  bool visibilidade = true;
  Matriz_Ordem_Hexapoda matrizClassificacao = new Matriz_Ordem_Hexapoda();
  ListaOrdens listaOrdens = new ListaOrdens();

  inicializa(){
    matrizClassificacao.define();
    if (matrizClassificacao.matrizij != null &&
        matrizClassificacao.matrizik != null) {
      botao1 = matrizClassificacao.matrizij;
      botao2 = matrizClassificacao.matrizik;
      img1 = matrizClassificacao.imgij;
      img2 = matrizClassificacao.imgik;
    }


  }

  primeirobotao(){
    if (classificou == false) {
      int w = matrizClassificacao.i + 1;
      listadecisoes.add("Decisão " +
          w.toString() +
          ":\n" +
          botao1 +
          "\n");
      historico = listadecisoes.join('\n');
      matrizClassificacao.i =
          matrizClassificacao.i + 1;
      matrizClassificacao.k =
          2 * matrizClassificacao.j + 1;
      matrizClassificacao.j =
          2 * matrizClassificacao.j;
      matrizClassificacao..define();
      botao1 = matrizClassificacao.matrizij;
      botao2 = matrizClassificacao.matrizik;
      img1 = matrizClassificacao.imgij;
      img2 = matrizClassificacao.imgik;
      ativou1.add(true);
      ativou2.add(false);
      if (botao1 != null && botao2 != null) {

      } else if (botao1 != null && botao2 == null) {
        classificou = true;
        botao1 = matrizClassificacao.matrizij;
        indice = listaOrdens.listaordens
            .indexOf(botao1);
        if (indice <= 12 && indice >= 10) {
          botao2 =
          "Você classificou a subordem acima!";
          visibilidade = false;
        } else {
          botao2 = "Você classificou a ordem acima!";
          visibilidade = false;
        }

      }
    }
  }


  segundobotao(){
    if (classificou == false) {
      int w = matrizClassificacao.i + 1;
      listadecisoes.add("Decisão " +
          w.toString() +
          ":\n" +
          botao2 +
          "\n");
      historico = listadecisoes.join('\n');
      matrizClassificacao.i =
          matrizClassificacao.i + 1;
      matrizClassificacao.j =
          2 * matrizClassificacao.k;
      matrizClassificacao.k =
          2 * matrizClassificacao.k + 1;
      matrizClassificacao..define();
      botao1 = matrizClassificacao.matrizij;
      botao2 = matrizClassificacao.matrizik;
      img1 = matrizClassificacao.imgij;
      img2 = matrizClassificacao.imgik;
      ativou1.add(false);
      ativou2.add(true);

      if (botao1 != null && botao2 != null) {

      } else if (botao1 != null && botao2 == null) {
        classificou = true;
        visibilidade = false;
        botao1 = matrizClassificacao.matrizij;
        botao2 = "Você classificou a ordem acima!";

      }
    }
  }

  botaodesfazer(){
    if (matrizClassificacao.i > 0) {
      if (ativou1[matrizClassificacao.i] == true) {
        ativou1.removeAt(matrizClassificacao.i);
        ativou2.removeAt(matrizClassificacao.i);
        listadecisoes.removeAt(matrizClassificacao.i);
        matrizClassificacao.i--;
        matrizClassificacao.j =
            (matrizClassificacao.j / 2).round();
        matrizClassificacao.k = matrizClassificacao.j + 1;

        matrizClassificacao..define();
        botao1 = matrizClassificacao.matrizij;
        botao2 = matrizClassificacao.matrizik;
        img1 = matrizClassificacao.imgij;
        img2 = matrizClassificacao.imgik;
        historico = listadecisoes.join('\n');

      } else if (ativou2[matrizClassificacao.i] = true) {
        ativou1.removeAt(matrizClassificacao.i);
        ativou2.removeAt(matrizClassificacao.i);
        listadecisoes.removeAt(matrizClassificacao.i);
        matrizClassificacao.i--;
        matrizClassificacao.k =
            (matrizClassificacao.j / 2).round();
        matrizClassificacao.j = matrizClassificacao.k - 1;
        matrizClassificacao..define();
        botao1 = matrizClassificacao.matrizij;
        botao2 = matrizClassificacao.matrizik;
        img1 = matrizClassificacao.imgij;
        img2 = matrizClassificacao.imgik;
        historico = listadecisoes.join('\n');

      }
    }
    visibilidade = true;
    classificou = false;
  }

  botaoreiniciar(){
    ativou1 = [false];
    ativou2 = [false];
    matrizClassificacao.i = 0;
    matrizClassificacao.j = 0;
    matrizClassificacao.k = 1;
    botao1 = matrizClassificacao.matrizij;
    botao2 = matrizClassificacao.matrizik;
    img1 = matrizClassificacao.imgij;
    img2 = matrizClassificacao.imgik;
    historico = "";
    listadecisoes = [""];
    visibilidade = true;
    classificou = false;
  }
}
