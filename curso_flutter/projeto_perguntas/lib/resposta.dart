import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() responder;

  Resposta(this.responder, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: responder,
        child: Text(text),
        style: ElevatedButton.styleFrom(
            primary: Colors.blue[400],
            onPrimary: Colors.white,
            onSurface: Colors.red,
            shadowColor: Colors.black,
            elevation: 15,
            textStyle: TextStyle(
              fontSize: 20,
            )),
      ),
    );
  }
}
