import 'package:flutter/material.dart';
import 'package:multischool_app/config/transacao_config.dart';
import 'package:multischool_app/domain/models/transacao.dart';
import 'package:multischool_app/widgets/movimentos/tabela_movimentos.dart';

class MovimentosTab extends StatelessWidget {
  final List<Transacao> transacoes = [
    Transacao(
        data: DateTime.now(),
        descricao: 'Roberto Portela',
        valor: 5000,
        type: TransacaoData.SAIDA),
    Transacao(
        data: DateTime.now(),
        descricao: 'Arreiou - Supe...',
        valor: 1000,
        type: TransacaoData.ENTRADA),
    Transacao(
        data: DateTime.now(),
        descricao: 'Mário Kenzo G...',
        valor: -500,
        type: TransacaoData.PAGAMENTO),
    Transacao(
        data: DateTime.now(),
        descricao: 'Supermercado',
        valor: -150,
        type: TransacaoData.TRANSFERENCIA),
    Transacao(
        data: DateTime.now(),
        descricao: 'Depósito',
        valor: 7508,
        type: TransacaoData.DEPOSITO),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TransacaoTable(transacoes: transacoes),
    ]);
  }
}
