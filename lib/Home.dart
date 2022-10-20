import 'package:flutter/material.dart';
import 'package:youtube_app/telas/Biblioteca.dart';
import 'package:youtube_app/telas/Favorito.dart';
import 'package:youtube_app/telas/Inicio.dart';
import 'package:youtube_app/telas/Inscricao.dart';

import 'CustomSearchDelegate.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    String? _resultado = "" ;
    List <Widget> telas =[
      Inicio(_resultado),
      Favorito(),
      inscricao(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey,
          opacity: 1 //pra coloca opacidade no icon
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
            "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions:  <Widget>[

          IconButton(
            onPressed: () async{
             String? res = await showSearch(context: context,delegate: CustomSerchDelegate());
             setState(() {
               _resultado = res;
             });
            },
            icon: const Icon(Icons.search),
          ),


        /*  IconButton(
            onPressed: (){
              print("acão: pesquiça");
            },
            icon: const Icon(Icons.search),
          ),

          IconButton(
            onPressed: (){
              print("acão: conta");
            },
            icon: const Icon(Icons.account_circle),
          ),*/
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
          child: telas [_indiceAtual]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual ,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items:  const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: "Inicio"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.whatshot),
            label: "Favorito"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.subscriptions),
            label:"Inscrições"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.folder_copy),
              label:"Bibioteca"
          ),



        ],
      ),

    );
  }
}
