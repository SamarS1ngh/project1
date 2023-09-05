import 'package:simpsonsviewer/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle titleText = GoogleFonts.kanit(
      fontWeight: FontWeight.w500, color: Colors.white, fontSize: 25);

  static TextStyle bodyText = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, color: AppColors.textPrimary, fontSize: 30);

  static TextStyle subTitles = GoogleFonts.montserrat(
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
      fontSize: 16);
}
