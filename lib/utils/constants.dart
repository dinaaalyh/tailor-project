import 'package:flutter/material.dart';
import 'package:get/utils.dart';

const sosialisasi = "Sosialisasi";
const monitoring = "Monitoring Debitur";
const update = "Update Data Debitur";
const REFRESH_TOKEN_EXPIRED = "Refresh Token Expired";

class AdaptiveFontSize {
  static double getFontSize(BuildContext context, double fontSize) {
    double screenWidth = context.mediaQuerySize.width;
    const double baseScreenWidth = 375.0;
    double scaleFactor = screenWidth / baseScreenWidth;
    return fontSize * scaleFactor;
  }
}