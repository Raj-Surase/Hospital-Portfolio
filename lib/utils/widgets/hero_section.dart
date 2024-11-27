import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/image_constant.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        ValueConstants.radius20Px(context),
      ),
      child: SizedBox(
        height: ValueConstants.isMobileDevice(context)
            ? ValueConstants.screenHeight(context) * 0.25
            : ValueConstants.screenHeight(context) * 0.5,
        width: ValueConstants.screenWidth(context) * 0.95,
        child: Stack(
          children: [
            Image.asset(
              ImageConstants.heroImage,
              fit: BoxFit.cover,
              width: ValueConstants.screenWidth(context) * 0.95,
            ),
            Container(
              width: ValueConstants.screenWidth(context) * 0.95,
              color: Colors.black.withOpacity(0.6),
            ),
            SizedBox(
              width: ValueConstants.screenWidth(context) * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "WAGHADKAR HOSPITAL",
                    style: ValueConstants.isMobileDevice(context)
                        ? TypographyConstants.textStyle26Pt(
                            context,
                            color: ColorConstants.textLowEm,
                            isBold: true,
                          )
                        : TypographyConstants.textStyle44Pt(
                            context,
                            color: ColorConstants.textLowEm,
                            isBold: true,
                          ),
                  ),
                  WidgetConstants.space16Pt(context: context, vertical: true),
                  Text(
                    "Kopargaon's trusted doctor",
                    style: TypographyConstants.textStyle26Pt(
                      context,
                      color: ColorConstants.textLowEm,
                      isBold: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
