import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';

class WidgetConstants {
  static EdgeInsetsGeometry paddingDefault(BuildContext context) =>
      EdgeInsets.fromLTRB(
        ValueConstants.padding24Px(context),
        ValueConstants.padding10Px(context),
        ValueConstants.padding24Px(context),
        ValueConstants.padding10Px(context),
      );

  static BoxShadow containerShadow = BoxShadow(
    color: ColorConstants.textHighEm.withOpacity(0.3),
    blurRadius: 7.0,
    spreadRadius: 0.5,
    offset: const Offset(-4, 4),
    // blurStyle: BlurStyle.outer,
  );

  static SizedBox space8Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space8Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space8Px(context),
      );

  static SizedBox space10Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space10Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space10Px(context),
      );

  static SizedBox space12Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space12Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space12Px(context),
      );

  static SizedBox space16Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space16Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space16Px(context),
      );

  static SizedBox space20Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space20Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space20Px(context),
      );

  static SizedBox space24Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space24Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space24Px(context),
      );

  static SizedBox space28Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space28Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space28Px(context),
      );

  static SizedBox space32Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space32Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space32Px(context),
      );

  static SizedBox space64Pt(
          {required bool vertical, required BuildContext context}) =>
      SizedBox(
        height: vertical ? ValueConstants.space64Px(context) : 0,
        width: vertical ? 0 : ValueConstants.space64Px(context),
      );
}
