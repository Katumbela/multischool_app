import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';
import '../theme/imageExporter.dart';

class UserHead extends StatefulWidget {
  const UserHead({super.key});

  @override
  State<UserHead> createState() => _UserHeadState();
}

class _UserHeadState extends State<UserHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.greenAccent[400],
            radius: 30,
            backgroundImage: AssetImage(AppUsers.user_1),
          ),
          Container(
            child: Row(
              children: [
                Container(
                    child: SvgPicture.asset(
                  AppSvgs.bell_svg,
                  width: 30,
                )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    child: SvgPicture.asset(
                  AppSvgs.status_i,
                  color: AppColors.primary,
                  width: 30,
                )),
                // Container(child: FaIcon(FontAwesomeIcons.bell)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
