import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multischool_app/pages/cardds_home_screens/matricula_Atual.dart';
import 'package:multischool_app/pages/universities_pages/quem_somos.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/widgets/cards_home_screens/screen_header.dart';
import 'package:page_transition/page_transition.dart';

class SecretariaCardsPage extends StatefulWidget {
  const SecretariaCardsPage({super.key});

  @override
  State<SecretariaCardsPage> createState() => _SecretariaCardsPageState();
}

class _SecretariaCardsPageState extends State<SecretariaCardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    //Image.asset(AppImages.logo)
                    SvgPicture.asset(
                      AppSvgs.secretary_svg,
                      width: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Secretária  ',
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
                          child: const MatriculaActual()))
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
                        AppSvgs.actual_subsription_2_svg,
                        width: 50,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Matrícula Atual',
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
                onTap: () => null,
                /*
                {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: const QuemSomosUniversity()))
                },
                */
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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.alarm_outlined,
                        size: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Horário',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
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
                          child: const SecretariaCardsPage()))
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      //image: AssetImage(assetName),

                      borderRadius: BorderRadius.circular(15)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month_sharp,
                        size: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Calendário de Provas ',
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
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    //image: AssetImage(assetName),

                    borderRadius: BorderRadius.circular(15)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book_rounded,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sumário',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    //image: AssetImage(assetName),

                    borderRadius: BorderRadius.circular(15)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_view_day_rounded,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Calendário Academico',
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
        ),
      ],
    ));
  }
}
