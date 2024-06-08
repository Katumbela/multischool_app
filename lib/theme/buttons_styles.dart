import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multischool_app/theme/colors.dart';

class ButtonPrimary {
  static final ButtonStyle multiSchoolButton = ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5));
}
