import 'package:flutter/material.dart';


class Favorito extends StatefulWidget {
  const Favorito({Key? key}) : super(key: key);

  @override
  State<Favorito> createState() => _FavoritoState();
}

class _FavoritoState extends State<Favorito> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Favorito",
          style:  TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
