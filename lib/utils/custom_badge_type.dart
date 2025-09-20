import 'package:flutter/material.dart';
import 'package:tailor_project/utils/colors.dart';

enum CustomBadgeType {
  success(backgroundColor: green, primaryColor: darkGreen),
  info(backgroundColor: blue, primaryColor: blue),
  warning(backgroundColor: yellow, primaryColor: darkYellow),
  danger(backgroundColor: red, primaryColor: darkRed);

  const CustomBadgeType({
    required this.backgroundColor,
    required this.primaryColor,
  });

  final Color backgroundColor;
  final Color primaryColor;
}
