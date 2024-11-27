import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';

class TypographyConstants {
  static TextStyle textStyle44Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text44Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  static TextStyle textStyle26Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text26Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );
  static TextStyle textStyle20Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text20Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  static TextStyle textStyle18Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text18Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  static TextStyle textStyle16Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text16Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  static TextStyle textStyle14Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text14Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  static TextStyle textStyle12Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text12Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  static TextStyle textStyle10Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text10Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  static TextStyle textStyle8Pt(BuildContext context,
          {required Color color, bool? isBold}) =>
      GoogleFonts.exo2(
        fontSize: ValueConstants.text8Pt(context),
        fontWeight: isBold == true
            ? FontWeight.w800
            : isBold == false
                ? FontWeight.w700
                : FontWeight.w600,
        color: color,
      );

  // static double _getAdaptiveFontSize(BuildContext context, double baseSize) {
  //   double screenWidth = MediaQuery.of(context).size.width;
  //   if (screenWidth < 600) {
  //     // Small screen (like mobile)
  //     return baseSize * 0.9;
  //   } else if (screenWidth < 1200) {
  //     // Medium screen (like tablet)
  //     return baseSize * 1.0;
  //   } else {
  //     // Large screen (like laptop)
  //     return baseSize * 1.0;
  //   }
  // }
}
