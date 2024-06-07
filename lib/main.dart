import 'package:flutter/material.dart';
import 'package:multischool_app/pages/homePage.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF012CB8)),
        useMaterial3: true,
      ),
      home: const HomePageMultiSchool(),
    );
  }
}
