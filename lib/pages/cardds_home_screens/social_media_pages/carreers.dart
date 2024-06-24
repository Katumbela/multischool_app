import 'package:flutter/material.dart';

class CarreirasSocialTab extends StatefulWidget {
  const CarreirasSocialTab({super.key});

  @override
  State<CarreirasSocialTab> createState() => _CarreirasSocialTabState();
}

class _CarreirasSocialTabState extends State<CarreirasSocialTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Carreiras brevemente!',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
