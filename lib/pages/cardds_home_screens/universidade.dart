import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multischool_app/pages/cardds_home_screens/secretaria_page.dart';
import 'package:multischool_app/pages/universities_pages/quem_somos.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/widgets/cards_home_screens/screen_header.dart';
import 'package:page_transition/page_transition.dart';

class Universidade extends StatefulWidget {
  const Universidade({super.key});

  @override
  State<Universidade> createState() => _UniversidadeState();
}

class _UniversidadeState extends State<Universidade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const CardScreenHeader(),
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
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      //image: AssetImage(assetName),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.primary.withOpacity(.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppSvgs.school_svg,
                        width: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Universidade Óscar Ribas',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: QuemSomosUniversity()))
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .01,
                      left: 20,
                      right: 20,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        //image: AssetImage(assetName),

                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppSvgs.pin_map_svg,
                          color: AppColors.primary,
                          width: 60,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Quem somos',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                InkWell(

                  
                   onTap: () => {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child:  SecretariaCardsPage()))
                  },



                  child: Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        //image: AssetImage(assetName),
                  
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppSvgs.secretary_svg,
                          width: 60,
                          color: AppColors.primary,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Secretaria',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      //image: AssetImage(assetName),

                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppSvgs.video_aula_svg,
                        width: 60,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Video Aulas',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      //image: AssetImage(assetName),

                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppSvgs.megaphone_svg,
                        width: 60,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Denúncia Acadêmica',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
