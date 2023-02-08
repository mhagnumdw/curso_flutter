import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

  void responder() {
    // print('Pergunta respondida!');
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
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1')
            ),
            ElevatedButton(
              onPressed: funcaoQueRetornaUmaOutraFuncao(),
              child: Text('Resposta 2')
            ),
            ElevatedButton(
              onPressed: () => debugPrint('Resposta 3 !!!!'),
              child: Text('Resposta 3')
            ),
          ],
        ),
      )
    );
  }

}
