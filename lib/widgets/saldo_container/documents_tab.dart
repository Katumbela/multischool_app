import 'package:flutter/material.dart';
import 'package:multischool_app/theme/colors.dart';

class DocumentsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'Extratos',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            'Extratos Pagamentos',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
          SizedBox(height: 10),
          //  Text('100 000,00 AKZ', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
