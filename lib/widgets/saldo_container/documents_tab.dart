import 'package:flutter/material.dart';

class DocumentsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Conta Estudante - AKZ'),
          Text('295190976 10 001'),
          Text('100 000,00 AKZ', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saldo Contabilístico'),
                  Text('100 000,00 AKZ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('Saldo Disponível'),
                  Text('98 899,99 AKZ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('Saldo Passivo', style: TextStyle(color: Colors.red)),
          Text('100 000,00 AKZ',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
