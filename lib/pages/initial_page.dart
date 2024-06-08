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
          HeadImage(),
          SizedBox(height: 10),
          Container(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Image.asset(AppUsers.user_1),
                )
              ],
            ),
          ),
          Container(child: Image.asset(AppUsers.user_1))
        ],
      ),
    );
  }

  Widget HeadImage() {
    return Stack(
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
                  bottomLeft: Radius.circular(65),
                  bottomRight: Radius.circular(65))),
        ),
        Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(.7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(65),
                    bottomRight: Radius.circular(65))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      AppImages.logo_for_dark,
                      width: 180,
                      height: 90,
                    ))
              ],
            )),
      ],
    );
  }
}
