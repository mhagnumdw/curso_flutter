import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;

  // const Reposta({super.key, required this.resposta});
  const Resposta(this.resposta);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(resposta),
    );
  }
}
