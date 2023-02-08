import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String resposta;

  final void Function() quandoSelecionado;

  const Resposta(this.resposta, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(
          resposta,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
