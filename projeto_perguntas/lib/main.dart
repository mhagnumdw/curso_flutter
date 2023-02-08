import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

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
            ElevatedButton(onPressed: null, child: Text('Resposta 1')),
            ElevatedButton(onPressed: null, child: Text('Resposta 2')),
            ElevatedButton(onPressed: null, child: Text('Resposta 3')),
          ],
        ),
      )
    );
  }

}
