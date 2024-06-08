import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/imageExporter.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      children: [
        SvgPicture.asset(
          AppSvgs.message_circle,
          width: 25,
        ),
        Text('Tela de Chat ou Mensagens'),
      ],
    ));
  }
}
