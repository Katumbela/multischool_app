import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multischool_app/domain/models/mensalidades..dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/widgets/cards_home_screens/screen_header.dart';
import 'package:multischool_app/widgets/mensalidades_pagina/tabela_mensalidaes.dart';

class MensalidadesMultiSchool extends StatefulWidget {
  const MensalidadesMultiSchool({super.key});

  @override
  State<MensalidadesMultiSchool> createState() =>
      _MensalidadesMultiSchoolState();
}

class _MensalidadesMultiSchoolState extends State<MensalidadesMultiSchool> {
  final List<MensalidadesModel> mensalidadesData = [
    MensalidadesModel(descricao: 'Pago', valor: 33450, mes: 'Janeiro'),
    MensalidadesModel(descricao: 'Pago', valor: 33450, mes: 'Fevereiro'),
    MensalidadesModel(descricao: 'Pago', valor: 33450, mes: 'Março'),
    MensalidadesModel(descricao: 'Pago', valor: 33450, mes: 'Abril'),
    MensalidadesModel(descricao: 'Pago', valor: 33450, mes: 'Maio'),
  ];

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
                        AppSvgs.bill_svg,
                        width: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Mensalidade',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Center(
                  child: Column(
                    children: [
                      Text(
                        'Ano Lectivo 2023/2024',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Curso: Eng. Eletrotécnica',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      MensalidadesTable(mensalidades: mensalidadesData)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
