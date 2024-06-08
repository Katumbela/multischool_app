import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multischool_app/theme/imageExporter.dart';

class IdentificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppSvgs.identity_svg),
        Center(
          child: Text('Tela de Notificações'),
        ),
      ],
    );
  }
}
