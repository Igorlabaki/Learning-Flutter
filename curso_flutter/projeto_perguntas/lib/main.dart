import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita',
      'respostas': ['Azul', 'Amarelo', 'Branca', 'Verde']
    },
    {
      'texto': 'Qual a seu animal favorito',
      'respostas': ['Cachorro', 'Vaca', 'Coelho', 'Gato']
    },
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: temPerguntaSelecionada
          ? Questioanrio(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: _responder)
          : Resultado(),
    ));
  }
}
