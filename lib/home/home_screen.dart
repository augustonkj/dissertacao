import 'package:ChaveamentoInsetos/agradecimentos/agradecimentos_screen.dart';
import 'package:ChaveamentoInsetos/constants.dart';
import 'package:ChaveamentoInsetos/contato/contato_screen.dart';
import 'package:ChaveamentoInsetos/referencias/referencias_screen.dart';
import 'package:flutter/material.dart';
import 'home_body.dart';

class homeScreen extends StatefulWidget {
  _homeScreen createState() => _homeScreen();
}

class _homeScreen extends State<homeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: buildAppBar(),

      body: homeBody(),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPrimaryColor,
        currentIndex: _currentIndex,

        elevation: 0,
        items: [
          BottomNavigationBarItem(

            icon: Icon(
              Icons.analytics,
              color: Colors.white,
            ),
            title: Text(
              'Agradecimentos',
              style: TextStyle(color: Colors.white),
            ),

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.white,
            ),
            title: Text(
              'Referências',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Contato',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        onTap: (menuindex) {
          setState(() {
            _currentIndex = menuindex;
          });
          if(_currentIndex==0){
             Navigator.push(context, MaterialPageRoute(builder: (context) => agradecimentosscreen()),
          );}
          if(_currentIndex==1){
            Navigator.push(context, MaterialPageRoute(builder: (context) => referencias_screen()),
            );}
          if(_currentIndex==2){
            Navigator.push(context, MaterialPageRoute(builder: (context) => contatoscreen()),
            );}

        },
      ),
    );
  }

  AppBar buildAppBar() {
    return new AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 30,
      elevation: 0.0,
    );
  }
}
