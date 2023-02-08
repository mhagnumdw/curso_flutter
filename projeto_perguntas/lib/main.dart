import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {

  var perguntaSelecionada = 0;

  void responder() {
    // setState serve pro Flutter saber que variável ele tem que
    // observar pra saber se a tela precisa ser atualizada
    setState(() {
      perguntaSelecionada++;
    });
    debugPrint('$perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o se animal favorito?'
    ];

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

class PerguntaApp extends StatefulWidget {

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }

}
