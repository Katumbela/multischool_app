import 'package:flutter/material.dart';
import 'package:multischool_app/pages/login_page.dart';
import 'package:multischool_app/theme/buttons_styles.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:page_transition/page_transition.dart';

class HomePageMultiSchool extends StatefulWidget {
  const HomePageMultiSchool({super.key});

  @override
  State<HomePageMultiSchool> createState() => _HomePageMultiSchoolState();
}

class _HomePageMultiSchoolState extends State<HomePageMultiSchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height *
                            .3), // decoration: BoxDecoration(color: AppColors.primary),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(AppIcons.logo_icon_dark)),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: LoginPage()))
                        },
                    style: ButtonPrimary.multiSchoolButton,
                    child: Text('Entrar')),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => {print('clicad')},
                    style: ButtonPrimary.multiSchoolButton,
                    child: Text('Cadastro')),
              ])
        ],
      ),
    );
  }
}
