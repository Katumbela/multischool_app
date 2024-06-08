import 'package:flutter/material.dart';
import 'package:multischool_app/theme/imageExporter.dart';

import '../theme/colors.dart';

class InitialHomePage extends StatefulWidget {
  const InitialHomePage({super.key});

  @override
  State<InitialHomePage> createState() => _InitialHomePageState();
}

class _InitialHomePageState extends State<InitialHomePage> {
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
                    color: AppColors.primary.withOpacity(.1),
                    image: DecorationImage(
                      image: AssetImage(AppBgs.school_bg),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(65),
                        bottomRight: Radius.circular(65))),
              ),
              Container(child: Image.asset(AppBgs.school_bg))
            ],
          ),
        ],
      ),
    );
  }
}
