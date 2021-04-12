import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestioanrio;

  Resultado(this.pontuacao, this.reiniciarQuestioanrio);

  String get fraseResultado {
    if (pontuacao <= 5) {
      return 'Parabens!';
    } else if (pontuacao <= 7) {
      return 'Cogratulation!';
    } else {
      return 'Nivel Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: reiniciarQuestioanrio,
          child: Text('Reiniciar?',
              style: TextStyle(fontSize: 20, color: Colors.blue)),
        ),
      ],
    );
  }
}
