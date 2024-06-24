import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Relatórios Acadêmicos',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildReportItem(
            context,
            'Notas do Semestre',
            'Visualize suas notas de todas as disciplinas deste semestre.',
            Icons.assignment,
          ),
          SizedBox(height: 20),
          _buildReportItem(
            context,
            'Frequência nas Aulas',
            'Detalhes sobre sua presença e ausências nas aulas.',
            Icons.calendar_today,
          ),
          SizedBox(height: 20),
          _buildReportItem(
            context,
            'Horário de Aulas',
            'Consulte seu horário de aulas atualizado.',
            Icons.access_time,
          ),
          SizedBox(height: 20),
          _buildReportItem(
            context,
            'Histórico Acadêmico',
            'Acesse seu histórico acadêmico completo.',
            Icons.school,
          ),
        ],
      ),
    );
  }

  Widget _buildReportItem(BuildContext context, String title,
      String description, IconData iconData) {
    return InkWell(
      onTap: () {
        // Lógica para navegar para detalhes do relatório
        // Implemente conforme necessário
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 36,
              color: Colors.white,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
