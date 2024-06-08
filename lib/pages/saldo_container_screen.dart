import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/widgets/saldo_container/movimentos_tab.dart';

import '../widgets/saldo_container/dados_conta_tab.dart';
import '../widgets/saldo_container/patrimonio_tab.dart';

class SaldoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 350.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: const SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(AppUsers.joao),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Conta Estudante AKZ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'JOAO A. KATOMBELA',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      background: Container(
                        color: AppColors.primary,
                      ),
                    ),
                    bottom: const TabBar(
                      labelColor: Colors.white,
                      unselectedLabelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      tabs: [
                        Tab(text: 'Patrimônio'),
                        Tab(text: 'Movimentos'),
                        Tab(text: 'Dados da Conta'),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  PatrimonioTab(),
                  MovimentosTab(),
                  DadosContaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
