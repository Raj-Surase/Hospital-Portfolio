import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/components/expanded_button.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ValueConstants.isMobileDevice(context)
          ? ValueConstants.screenHeight(context) * 0.25
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dr. Rajendra Waghadkar",
                style: TypographyConstants.textStyle26Pt(
                  context,
                  color: ColorConstants.textHighEm,
                  isBold: true,
                ),
              ),
              WidgetConstants.space8Pt(context: context, vertical: true),
              Text(
                "M. D. (Mumbai)",
                style: TypographyConstants.textStyle16Pt(
                  context,
                  color: ColorConstants.textHighEm,
                  isBold: true,
                ),
              ),
              WidgetConstants.space10Pt(context: context, vertical: true),
              SizedBox(
                width: ValueConstants.screenWidth(context) * 0.3,
                child: Text(
                  "Dedicated to healing, committed to care—your health is my priority.",
                  style: TypographyConstants.textStyle14Pt(
                    context,
                    color: ColorConstants.textHighEm,
                    // isBold: false,
                  ),
                ),
              ),
              WidgetConstants.space32Pt(context: context, vertical: true),
              SizedBox(
                width: ValueConstants.screenWidth(context) * 0.3,
                child: ExpandedButton(
                  color: ColorConstants.containerFG,
                  text: "Contact Me",
                  isBorder: true,
                  textColor: ColorConstants.accentPurple,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Container(
            width: ValueConstants.screenWidth(context) * 0.2,
            height: ValueConstants.screenWidth(context) * 0.2,
            decoration: BoxDecoration(
              color: ColorConstants.surfaceFG,
              borderRadius: BorderRadius.circular(
                ValueConstants.radius16Px(context),
              ),
            ),
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
