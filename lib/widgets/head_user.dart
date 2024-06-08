import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/imageExporter.dart';

class HeadImage extends StatefulWidget {
  const HeadImage({super.key});

  @override
  State<HeadImage> createState() => _HeadImageState();
}

class _HeadImageState extends State<HeadImage> {
  @override
  Widget build(BuildContext context) {
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
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45))),
        ),
        Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(.7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45))),
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
