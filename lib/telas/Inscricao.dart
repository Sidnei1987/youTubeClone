import 'package:flutter/material.dart';

class inscricao extends StatefulWidget {
  const inscricao({Key? key}) : super(key: key);

  @override
  State<inscricao> createState() => _inscricaoState();
}

class _inscricaoState extends State<inscricao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Incrições",
          style:  TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
