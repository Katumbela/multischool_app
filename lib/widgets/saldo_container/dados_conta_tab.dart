import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';

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
            height: 6,
          ),
          const Text('Número',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.primary)),
          const Row(
            children: [
              Text('295190976 10 001'),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.copy_all, size: 18)
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Text('IBAN',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.primary)),
          const Row(
            children: [
              Text('AO06 0040 3429 5190976 1002 10'),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.copy_all, size: 18)
            ],
          ),
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
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Saldo Contabilístico'),
                    Text('100 000,00 AKZ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700])),
                    const SizedBox(height: 10),
                    const Text('Saldo Disponível'),
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
          const Text('Saldo Passivo', style: TextStyle(color: Colors.black)),
          const Text('100 000,00 AKZ',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
