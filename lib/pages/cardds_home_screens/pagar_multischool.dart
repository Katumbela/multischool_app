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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CardScreenHeader(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .15,
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      //image: AssetImage(assetName),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.primary.withOpacity(.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'CONTA',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '100 324 3434 1 000',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '190 450.00 kz',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),

                // form do deposito

                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05,
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      //image: AssetImage(assetName),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'CONTA',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '100 324 3434 1 000',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '190 450.00 kz',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
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
