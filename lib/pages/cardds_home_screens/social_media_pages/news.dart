import 'package:flutter/material.dart';

class NoticiasSocialTab extends StatefulWidget {
  const NoticiasSocialTab({super.key});

  @override
  State<NoticiasSocialTab> createState() => _NoticiasSocialTabState();
}

class _NoticiasSocialTabState extends State<NoticiasSocialTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Fórum brevemente!',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
