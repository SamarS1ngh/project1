// ignore_for_file: file_names

import 'package:fluttemp/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle titleText = GoogleFonts.kanit(
      fontWeight: FontWeight.w600, color: Colors.white, fontSize: 40);

  static TextStyle bodyText = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, color: AppColors.textPrimary, fontSize: 30);

  static TextStyle subTitles = GoogleFonts.montserrat(
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
      fontSize: 26);
}
