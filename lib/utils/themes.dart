import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tailor_project/utils/colors.dart';
import 'package:tailor_project/utils/typographies.dart';

class Themes {
  static final apps = ThemeData(
    useMaterial3: true,
    platform: TargetPlatform.android,
    primaryColor: primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      color: white,
      elevation: 1.0,
      titleTextStyle: semiBold.copyWith(fontSize: 16),
      iconTheme: IconThemeData(color: black),
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: cursor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final navigation = ThemeData(
    splashFactory: InkRipple.splashFactory,
    splashColor: black.withOpacity(0.08),
    highlightColor: primaryColor.withOpacity(0.08),
  );

  static final pinCode = PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(8),
    inactiveColor: const Color(0xffD1D5DB),
    activeColor: blue,
    fieldWidth: 60,
    fieldHeight: 64,
  );
}
