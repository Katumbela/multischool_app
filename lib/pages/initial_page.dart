import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multischool_app/theme/bottom_label_style.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';

import 'chat_screen_tab.dart';
import 'home_screen_tab.dart';
import 'identification_screen_tab.dart';
import 'reports_screen_tab.dart';

class InitialHomePage extends StatefulWidget {
  const InitialHomePage({super.key});

  @override
  State<InitialHomePage> createState() => _InitialHomePageState();
}

class _InitialHomePageState extends State<InitialHomePage> {
  int _currentIndex = 0;

  // Lista de widgets que representam cada tela
  final List<Widget> _children = [
    HomeScreen(),
    IdentificationScreen(),
    ReportsScreen(),
    ChatScreen(),
  ];

  // Atualiza o índice atual
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // Exibe a tela correspondente
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 10),
        selectedLabelStyle: TextStyle(fontSize: 12),
        selectedItemColor: AppColors.primary,
        onTap: onTabTapped, // Atualiza o índice quando uma aba é tocada

        currentIndex: _currentIndex, // Define a aba atualmente selecionada
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicial',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgs.identity_svg),
            label: 'Identificação',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Relatórios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
