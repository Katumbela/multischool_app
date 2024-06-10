import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multischool_app/pages/login_page.dart';
import 'package:multischool_app/theme/buttons_styles.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/widgets/cards_home_screens/screen_header.dart';
import 'package:multischool_app/widgets/cards_home_screens/select_drop_down.dart';
import 'package:page_transition/page_transition.dart';

class PagarMultischool extends StatefulWidget {
  const PagarMultischool({super.key});

  @override
  State<PagarMultischool> createState() => _PagarMultischoolState();
}

class _PagarMultischoolState extends State<PagarMultischool> {
  String? _entidadeSelect;
  String? _servicoSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CardScreenHeader(),
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
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      //image: AssetImage(assetName),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.primary.withOpacity(.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'CONTA',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '100 324 3434 1 000',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '190 450.00 kz',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),

                // form do deposito

                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05,
                    left: 20,
                    right: 20,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  //height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      //image: AssetImage(assetName),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppSvgs.wallet_svg,
                        width: 55,
                      ),
                      Text(
                        'Pagamento',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: SelectDropdown(
                          placeholder: "Selecione o serviço",
                          selectedValue: _servicoSelect,
                          options: [
                            'Pagamento propina',
                            'Outro exemplo',
                            'Opção 3'
                          ],
                          onChanged: (String? newValue) {
                            setState(() {
                              _servicoSelect = newValue;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: SelectDropdown(
                          placeholder: "Selecione a entidade",
                          selectedValue: _entidadeSelect,
                          options: [
                            'Banco BFA',
                            'Banco SOl 2',
                            'Angola MUlti 3'
                          ],
                          onChanged: (String? newValue) {
                            setState(() {
                              _entidadeSelect = newValue;
                            });
                          },
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Montante'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Contacto'),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .06,
                      left: MediaQuery.of(context).size.width * .59,
                      right: 16),
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: LoginPage()))
                          },
                      style: ButtonPrimary.multiSchoolButton,
                      child: Row(
                        children: [
                          Text(
                            'Validar',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            size: 18,
                            color: Colors.white,
                          )
                        ],
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
