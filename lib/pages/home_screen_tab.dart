// Telas fictícias para cada aba
import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';

import '../widgets/card_item.dart';
import '../widgets/head_user.dart';
import '../widgets/user_head_datas.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeadImage(),
          SizedBox(height: 10),
          UserHead(),
          SizedBox(height: 10),

          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            child: const Column(
              children: [
                Text(
                  'Saldo Disponível',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '109 000,00 Kz',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 60, top: 10, left: 5, right: 5),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardItem(
                            imageUrl: AppSvgs.wallet_svg,
                            title: 'Pagar Multischool'),

                        SizedBox(width: 20), // Gap of 20 pixe

                        CardItem(
                            imageUrl: AppSvgs.bill_svg, title: 'Mensalidade'),
                        SizedBox(width: 20), // Gap of 20 pixelsls
                        CardItem(
                            imageUrl: AppSvgs.school_svg,
                            title: 'Universidade'),
                      ],
                    )),

                // outra linha dos icones

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardItem(
                            imageUrl: AppSvgs.bank_svg,
                            title: 'Serviço Multischool'),

                        SizedBox(width: 20), // Gap of 20 pixels
                        CardItem(
                            imageUrl: AppSvgs.graph_up_svg,
                            title: 'Empreendedorismo'),

                        SizedBox(width: 20), // Gap of 20 pixels
                        CardItem(
                            imageUrl: AppSvgs.bill_svg, title: 'Mensalidade')
                      ],
                    )),
              ],
            ),
          ),

          // Container(child: Image.asset(AppUsers.school_bg))
        ],
      ),
    );
  }
}
