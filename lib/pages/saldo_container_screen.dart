import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';

import '../theme/imageExporter.dart';
import '../widgets/saldo_container/dados_conta_tab.dart';
import '../widgets/saldo_container/movimentos_tab.dart';
import '../widgets/saldo_container/patrimonio_tab.dart';

class SaldoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          
          toolbarHeight: 300, // Altera a altura do AppBar
          backgroundColor: AppColors.primary,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      AppUsers.joao) // Substitua pela URL real da imagem
                  ),
              const SizedBox(height: 10),
              const Text(
                'Conta Estudante AKZ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Text(
                'MÁRIO KENZO GUALDINO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          bottom: const TabBar(
            labelStyle: TextStyle(color: Colors.white),
            tabs: [
              Tab(text: 'Patrimônio'),
              Tab(text: 'Movimentos'),
              Tab(text: 'Dados da Conta'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PatrimonioTab(),
            MovimentosTab(),
            DadosContaTab(),
          ],
        ),
      ),
    );
  }
}
