import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/widgets/cards_home_screens/screen_header.dart';

class PagarMultischool extends StatefulWidget {
  const PagarMultischool({super.key});

  @override
  State<PagarMultischool> createState() => _PagarMultischoolState();
}

class _PagarMultischoolState extends State<PagarMultischool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CardScreenHeader(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [Text('CONTA')],
              ),
            ),
          )
        ],
      ),
    );
  }
}
