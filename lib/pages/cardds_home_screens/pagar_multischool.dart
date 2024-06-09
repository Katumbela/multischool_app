import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';

class PagarMultischool extends StatefulWidget {
  const PagarMultischool({super.key});

  @override
  State<PagarMultischool> createState() => _PagarMultischoolState();
}

class _PagarMultischoolState extends State<PagarMultischool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(.3),
                    image: DecorationImage(
                      image: AssetImage(AppBgs.school_bg),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(45))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Icon(
                            Icons.arrow_back_sharp,
                            size: 30,
                            color: Colors.white,
                          ))
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
