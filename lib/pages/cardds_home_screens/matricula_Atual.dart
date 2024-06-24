import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/widgets/cards_home_screens/screen_header.dart';

class MatriculaActual extends StatefulWidget {
  const MatriculaActual({super.key});

  @override
  State<MatriculaActual> createState() => _MatriculaActualState();
}

class _MatriculaActualState extends State<MatriculaActual> {
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
                      SvgPicture.asset(
                        AppSvgs.actual_subsription_2_svg,
                        width: 70,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Matrícula Actual',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                    child: Column(
                  children: [
                    const Text('Curso: Engenharia Eletrotécnica'),
                    const Text(
                      'Ano Lectivo: 2023/2024',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('4º Ano Curricular'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Estado:'),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Activo',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Tesouraria:'),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Situação Regularizada',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: const Divider(
                    thickness: .5,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Recrutamento e Seleção de Pessoas',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary)),
                      Text('1º Ano'),
                      Text('1º Semestre - Turma A1'),
                      Text('Avaliação: Com Frequência'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Avaliação e Desempenho',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary)),
                      Text('4º Ano'),
                      Text('1º Semestre - Turma B1'),
                      Text('Avaliação: Com Frequência'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Cálculo Actuarial',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary)),
                      Text('4º Ano'),
                      Text('1º Semestre - Turma B1'),
                      Text('Gestão de Carreira'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Avaliação e Desempenho',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary)),
                      Text('4º Ano'),
                      Text('1º Semestre - Turma B1'),
                      Text('Avaliação: Com Frequência'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Avaliação e Desempenho',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary)),
                      Text('4º Ano'),
                      Text('1º Semestre - Turma B1'),
                      Text('Avaliação: Com Frequência'),
                      const SizedBox(
                        height: 15,
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
