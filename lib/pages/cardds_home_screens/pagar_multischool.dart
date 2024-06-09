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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .18,
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text('CONTA')],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
