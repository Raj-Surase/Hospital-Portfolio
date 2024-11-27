import 'package:flutter/material.dart';

class ValueConstants {
  // Base values for different sizes
  static const double _baseText8Pt = 8;
  static const double _baseText10Pt = 10;
  static const double _baseText12Pt = 12;
  static const double _baseText14Pt = 14;
  static const double _baseText16Pt = 16;
  static const double _baseText18Pt = 18;
  static const double _baseText20Pt = 20;
  static const double _baseText26Pt = 26;
  static const double _baseText44Pt = 44;

  static const double _baseIcon12Px = 12;
  static const double _baseIcon16Px = 16;
  static const double _baseIcon20Px = 20;
  static const double _baseIcon24Px = 24;
  static const double _baseIcon28Px = 28;
  static const double _baseIcon40Px = 40;
  static const double _baseIcon64Px = 64;

  static const double _baseSpace8Px = 8;
  static const double _baseSpace10Px = 10;
  static const double _baseSpace12Px = 12;
  static const double _baseSpace16Px = 16;
  static const double _baseSpace20Px = 20;
  static const double _baseSpace24Px = 24;
  static const double _baseSpace28Px = 28;
  static const double _baseSpace32Px = 32;
  static const double _baseSpace64Px = 64;

  static const double _basePadding8Px = 8;
  static const double _basePadding10Px = 10;
  static const double _basePadding14Px = 14;
  static const double _basePadding16Px = 16;
  static const double _basePadding20Px = 20;
  static const double _basePadding24Px = 24;
  static const double _basePadding30Px = 30;
  static const double _basePadding40Px = 40;

  static const double _baseRadius10Px = 10;
  static const double _baseRadius16Px = 16;
  static const double _baseRadius20Px = 20;

  static const double _baseContainer16Px = 16;
  static const double _baseContainer20Px = 20;
  static const double _baseContainer24Px = 24;
  static const double _baseContainer32Px = 32;
  static const double _baseContainer64Px = 64;

  // Method to get adaptive value based on screen size
  static double _getAdaptiveValue(BuildContext context, double baseValue) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      // Small screen (like mobile)
      return baseValue * 0.8;
    } else if (screenWidth < 1200) {
      // Medium screen (like tablet)
      return baseValue * 1;
    } else {
      // Large screen (like laptop)
      return baseValue * 1.4;
    }
  }

  // Text size constants
  static double text8Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText8Pt);
  static double text10Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText10Pt);
  static double text12Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText12Pt);
  static double text14Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText14Pt);
  static double text16Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText16Pt);
  static double text18Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText18Pt);
  static double text20Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText20Pt);
  static double text44Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText44Pt);
  static double text26Pt(BuildContext context) =>
      _getAdaptiveValue(context, _baseText26Pt);

  // Icon size constants
  static double icon12Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseIcon12Px);
  static double icon16Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseIcon16Px);
  static double icon20Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseIcon20Px);
  static double icon24Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseIcon24Px);
  static double icon28Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseIcon28Px);
  static double icon40Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseIcon40Px);
  static double icon64Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseIcon64Px);

  // Spacing constants
  static double space8Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace8Px);
  static double space10Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace10Px);
  static double space12Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace12Px);
  static double space16Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace16Px);
  static double space20Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace20Px);
  static double space24Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace24Px);
  static double space28Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace28Px);
  static double space32Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace32Px);
  static double space64Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseSpace64Px);

  // Padding constants
  static double padding8Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding8Px);
  static double padding10Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding10Px);
  static double padding14Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding14Px);
  static double padding16Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding16Px);
  static double padding20Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding20Px);
  static double padding24Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding24Px);
  static double padding30Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding30Px);
  static double padding40Px(BuildContext context) =>
      _getAdaptiveValue(context, _basePadding40Px);

  // Radius constants
  static double radius10Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseRadius10Px);
  static double radius16Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseRadius16Px);
  static double radius20Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseRadius20Px);

  // Container constants
  static double container16Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseContainer16Px);
  static double container20Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseContainer20Px);
  static double container24Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseContainer24Px);
  static double container32Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseContainer32Px);
  static double container64Px(BuildContext context) =>
      _getAdaptiveValue(context, _baseContainer64Px);

  // Screen dimensions
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobileDevice(BuildContext context) {
    if (ValueConstants.screenWidth(context) < 600) {
      return true;
    } else {
      return false;
    }
  }
}
