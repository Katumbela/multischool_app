import 'package:flutter/material.dart';

class AppInputs {
  static InputDecoration white_input_app = InputDecoration(
      focusColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25)),
      border: OutlineInputBorder());
}
