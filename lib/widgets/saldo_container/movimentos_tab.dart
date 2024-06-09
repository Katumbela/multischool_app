import 'package:flutter/material.dart';
import 'package:multischool_app/domain/models/transacao.dart';
import 'package:multischool_app/widgets/movimentos/tabela_movimentos.dart';

class MovimentosTab extends StatelessWidget {
  final List<Transacao> transacoes = [
    Transacao(
        data: DateTime.now(),
        descricao: 'Compra de Livros',
        valor: -50.00,
        type: 'Entrada'),
    Transacao(
        data: DateTime.now(),
        descricao: 'Salário',
        valor: 1000.00,
        type: 'Entrada'),
    Transacao(
        data: DateTime.now(),
        descricao: 'Aluguel',
        valor: -500.00,
        type: 'Saida'),
    Transacao(
        data: DateTime.now(),
        descricao: 'Supermercado',
        valor: -150.00,
        type: 'Saida'),
    Transacao(
        data: DateTime.now(),
        descricao: 'Transporte',
        valor: -75.00,
        type: 'Saida'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TransacaoTable(transacoes: transacoes),
    ]);
  }
}
