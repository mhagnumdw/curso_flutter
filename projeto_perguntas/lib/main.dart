import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

  // Isso viola o componente, já que ele é sem estado (StatelessWidget),
  // por isso a tela não muda a Pergunta a cada vez que essa variável
  // é incrementada
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    debugPrint('$perguntaSelecionada');
    debugPrint('Pergunta respondida!');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      debugPrint('Pergunta respondida #02!');
    };
  }

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o se animal favorito?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('Olá Flutter!!!'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      )
    );
  }

}
