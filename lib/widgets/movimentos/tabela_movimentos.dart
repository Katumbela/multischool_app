import 'package:flutter/material.dart';
import 'package:multischool_app/config/transacao_config.dart';
import 'package:multischool_app/domain/models/transacao.dart';
import 'package:multischool_app/theme/colors.dart';

class TransacaoTable extends StatelessWidget {
  final List<Transacao> transacoes;

  TransacaoTable({required this.transacoes});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowHeight: 30, // Altura do cabeçalho
        dataRowHeight: 35,
        columns: [
          DataColumn(label: Text('Data')),
          DataColumn(label: Text('Descrição')),
          DataColumn(label: Text('Valor')),
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
            DataCell(
              Row(children: [
                transacao.type == TransacaoData.SAIDA
                    ? Icon(Icons.arrow_circle_down_outlined,
                        color: Colors.green[800], size: 20)
                    : transacao.type == TransacaoData.PAGAMENTO
                        ? Icon(Icons.arrow_outward_outlined,
                            color: Colors.orange[800], size: 20)
                        : transacao.type == TransacaoData.DEPOSITO
                            ? Icon(Icons.assured_workload_outlined,
                                color: AppColors.primary, size: 20)
                            : Icon(Icons.arrow_circle_up_outlined,
                                color: Colors.red[800], size: 20),
                SizedBox(width: 5),
                /* SvgPicture.asset(
                  transacao.type == TransacaoData.SAIDA
                      ? AppSvgs.saida_svg
                      : transacao.type == TransacaoData.ENTRADA
                          ? AppSvgs.entrada_svg
                          : transacao.type == TransacaoData.DEPOSITO
                              ? AppSvgs.transfer_svg
                              : transacao.type == TransacaoData.PAGAMENTO
                                  ? AppSvgs.school_svg
                                  : transacao.type ==
                                          TransacaoData.TRANSFERENCIA
                                      ? AppSvgs.transfer_svg
                                      : AppSvgs.transfer_svg,
                  width: 20,
                ),*/
                Text('${transacao.valor.toStringAsFixed(2)} Kz')
              ]),
            ),
          ],
        );
}
