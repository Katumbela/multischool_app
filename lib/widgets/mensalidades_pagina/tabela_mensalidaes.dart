import 'package:flutter/material.dart';
import 'package:multischool_app/domain/models/mensalidades..dart';
import 'package:multischool_app/theme/colors.dart';

class MensalidadesTable extends StatelessWidget {
  final List<MensalidadesModel> mensalidades;

  MensalidadesTable({required this.mensalidades});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return AppColors.primary; // Cor do cabeçalho
        }),
        // columnSpacing: 18, // Espaçamento entre as colunas
        headingRowHeight: 30, // Altura do cabeçalho
        dataRowHeight: 35,
        columns: [
          DataColumn(
              label: Text(
            'Mês',
            style: TextStyle(color: Colors.white),
          )),
          DataColumn(
              label: Text(
            'Valores',
            style: TextStyle(color: Colors.white),
          )),
          DataColumn(
              label: Text(
            'Descrição',
            style: TextStyle(color: Colors.white),
          )),
        ],
        rows: mensalidades
            .map((mensalidades) => MensalidadesRow(mensalidades: mensalidades))
            .toList(),
      ),
    );
  }
}

class MensalidadesRow extends DataRow {
  final MensalidadesModel mensalidades;

  MensalidadesRow({required this.mensalidades})
      : super(cells: [
          DataCell(
            Text('${mensalidades.mes}'),
          ),
          DataCell(
            Text('${mensalidades.valor.toStringAsFixed(2)} Kz'),
          ),
          DataCell(
            Text('${mensalidades.descricao}'),
          ),
        ]);
}
