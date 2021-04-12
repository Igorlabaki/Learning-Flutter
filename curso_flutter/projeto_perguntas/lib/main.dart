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
  var _totalPontos = 0;
  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita',
      'respostas': [
        {'texto': 'Azul', 'pontos': 1},
        {'texto': 'Amarelo', 'pontos': 2},
        {'texto': 'Branca', 'pontos': 3},
        {'texto': 'Verde', 'pontos': 4},
      ]
    },
    {
      'texto': 'Qual a seu animal favorito',
      'respostas': [
        {'texto': 'Cachorro', 'pontos': 1},
        {'texto': 'Vaca', 'pontos': 2},
        {'texto': 'Coelho', 'pontos': 3},
        {'texto': 'Gato', 'pontos': 4},
      ]
    },
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _totalPontos += pontuacao;
    });
  }

  void _reiniciarQuestionairo() {
    setState(() {
      _perguntaSelecionada = 0;
      _totalPontos = 0;
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
          : Resultado(_totalPontos, _reiniciarQuestionairo),
    ));
  }
}
