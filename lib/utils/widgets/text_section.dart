import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/image_constant.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ValueConstants.isMobileDevice(context)
          ? ValueConstants.screenHeight(context) * 0.45
          : ValueConstants.screenHeight(context) * 0.6,
      width: ValueConstants.screenWidth(context) * 0.95,
      padding: EdgeInsets.all(
        ValueConstants.padding16Px(context),
      ),
      decoration: BoxDecoration(
        // color: ColorConstants.surfaceFG,
        borderRadius: BorderRadius.circular(
          ValueConstants.radius20Px(context),
        ),
      ),
      child: ValueConstants.isMobileDevice(context)
          ? mobileView(context)
          : desktopView(context),
    );
  }

  Column mobileView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Treating over ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                    TextSpan(
                      text: "10,000+ ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.accentPurple, isBold: true),
                    ),
                    TextSpan(
                      text: "patients every month.",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                  ],
                ),
              ),
              WidgetConstants.space24Pt(context: context, vertical: true),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Backed by more than ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                    TextSpan(
                      text: "4+ years ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.accentPurple, isBold: true),
                    ),
                    TextSpan(
                      text: "of experience in the field.",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        WidgetConstants.space24Pt(context: context, vertical: true),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              ValueConstants.radius16Px(context),
            ),
            child: Image.asset(
              ImageConstants.heroImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Row desktopView(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: ValueConstants.screenWidth(context) * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Treating over ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                    TextSpan(
                      text: "10,000+ ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.accentPurple, isBold: true),
                    ),
                    TextSpan(
                      text: "patients every month.",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                  ],
                ),
              ),
              WidgetConstants.space24Pt(context: context, vertical: true),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Backed by more than ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                    TextSpan(
                      text: "4+ years ",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.accentPurple, isBold: true),
                    ),
                    TextSpan(
                      text: "of experience in the field.",
                      style: TypographyConstants.textStyle26Pt(context,
                          color: ColorConstants.textHighEm, isBold: false),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: ValueConstants.screenWidth(context) * 0.4,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                ValueConstants.radius16Px(context),
              ),
              child: Image.asset(
                ImageConstants.heroImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
