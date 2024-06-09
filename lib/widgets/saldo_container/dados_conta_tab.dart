import 'package:flutter/material.dart';

class DadosContaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Conta Estudante - AKZ'),
          const SizedBox(
            height: 10,
          ),
          const Text('295190976 10 001'),
          const SizedBox(
            height: 10,
          ),
          Text('100 000,00 AKZ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.green[700])),
          const SizedBox(height: 40),
          Center(
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Saldo Contabilístico'),
                    Text('100 000,00 AKZ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700])),
                    SizedBox(height: 10),
                    Text('Saldo Disponível'),
                    Text('98 899,99 AKZ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700])),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text('Saldo Passivo', style: TextStyle(color: Colors.red)),
          const Text('100 000,00 AKZ',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
