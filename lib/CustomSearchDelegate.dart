import 'package:flutter/material.dart';

class CustomSerchDelegate extends SearchDelegate <String>{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){
            query = "";
          },
          icon: Icon(Icons.clear)
      ),


    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(
          onPressed: (){
            close(context, "" );
          },
          icon: Icon(Icons.arrow_back),
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query); // captura o resultado da busca
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {// serve para coloca um lista de sugestão para pesquiça
    return Container();
  }

  

}