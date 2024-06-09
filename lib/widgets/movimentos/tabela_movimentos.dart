import 'package:flutter/material.dart';
import 'package:multischool_app/domain/models/transacao.dart';

class TransacaoTable extends StatelessWidget {
  final List<Transacao> transacoes;

  TransacaoTable({required this.transacoes});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(label: Text('Data')),
          DataColumn(label: Text('Descrição')),
          DataColumn(label: Text('Valor')),
          DataColumn(label: Text('t')),
        ],
        rows: transacoes
            .map((transacao) => TransacaoRow(transacao: transacao))
            .toList(),
      ),
    );
  }
}

class TransacaoRow extends DataRow {
  final Transacao transacao;

  TransacaoRow({required this.transacao})
      : super(
          cells: [
            DataCell(Text(
                '${transacao.data.day}/${transacao.data.month}/${transacao.data.year}')),
            DataCell(Text(transacao.descricao)),
            DataCell(Text('${transacao.valor.toStringAsFixed(2)} AKZ')),
            DataCell(Text(transacao.type)),
          ],
        );
}
