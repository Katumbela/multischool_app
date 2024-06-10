import 'package:flutter/material.dart';
import 'package:multischool_app/pages/splash_home.dart';
import 'package:multischool_app/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multischool APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'roboto', // Definindo a fonte globalmente
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const HomePageMultiSchool(),
    );
  }
}
