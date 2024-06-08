// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:multischool_app/pages/initial_page.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/theme/input_decoration.dart';
import 'package:multischool_app/theme/texts_style.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quickalert/quickalert.dart';

import '../widgets/num_pad.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _adesaoControler = TextEditingController();
  final TextEditingController _senhaControler = TextEditingController();
  late String activeInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          actions: [
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(Icons.info_outline))
          ],
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .389,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(65),
                          bottomRight: Radius.circular(65))),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .005,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(65),
                            bottomRight: Radius.circular(65))),
                    child: Column(
                      children: [
                        Center(
                          child:
                              Image.asset(AppImages.logo_for_dark, width: 245),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .09,
                          ),
                          child: Column(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Adesão', style: AppTexts.label_white),
                                TextField(
                                  readOnly: true,
                                  controller: _adesaoControler,
                                  onTap: () =>
                                      setState(() => activeInput = 'adesao'),
                                  decoration: AppInputs.white_input_app,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Senha', style: AppTexts.label_white),
                                TextField(
                                  readOnly: true,
                                  controller: _senhaControler,
                                  keyboardType: TextInputType.visiblePassword,
                                  onTap: () =>
                                      setState(() => activeInput = 'senha'),
                                  decoration: AppInputs.white_input_app,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.key,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Recuperar senha',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )
                                ],
                              ),
                            )
                          ]),
                        )
                      ],
                    ))
              ],
            ),
            NumPad(
              buttonSize: 75,
              buttonColor: Colors.transparent,
              iconColor: Color(0xFFB86800),
              controller:
                  activeInput == 'adesao' ? _adesaoControler : _senhaControler,
              delete: () {
                activeInput == 'adesao'
                    ? _adesaoControler.text = _adesaoControler.text
                        .substring(0, _adesaoControler.text.length - 1)
                    : _senhaControler.text = _senhaControler.text
                        .substring(0, _senhaControler.text.length - 1);
              },
              // do something with the input numbers
              onSubmit: () {
                /*  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          content: Text(
                            "You code is ${activeInput == 'adesao' ? _adesaoControler.text : _senhaControler.text}",
                            style: const TextStyle(fontSize: 30),
                          ),
                        ));*/

                if (_adesaoControler.text == '' || _senhaControler.text == '') {
                  QuickAlert.show(
                    context: context,
                    title: 'Credenciais Necessárias',
                    type: QuickAlertType.warning,
                    text: 'Insira seu número de adesão e a senha',
                    confirmBtnText: 'Ok',
                    confirmBtnColor: AppColors.primary,
                  );
                } else {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: InitialHomePage()));
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: -10,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 2, color: AppColors.primary),
                  ),
                  color: Colors.grey[400],
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Cadastro'), Text('Ajuda')],
                ),
              ),
            )
          ],
        ));
  }
}
