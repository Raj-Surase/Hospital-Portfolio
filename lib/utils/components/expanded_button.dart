import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';

class ExpandedButton extends StatelessWidget {
  Color color;
  String text;
  bool? isBorder;
  bool? isFill;
  Color textColor;
  ExpandedButton({
    required this.color,
    required this.text,
    this.isBorder,
    this.isFill,
    this.textColor = ColorConstants.textHighEm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // Change cursor to hand pointer

      child: GestureDetector(
        onTap: () {},
        child: Container(
          // height: ValueConstants.container32Px(context),
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),

          decoration: BoxDecoration(
            color:
                isFill != null ? ColorConstants.accentBlue : Colors.transparent,
            borderRadius: BorderRadius.circular(
              ValueConstants.radius10Px(context),
            ),
            border: isBorder != null
                ? Border.all(
                    color: ColorConstants.accentPurple,
                    width: 2,
                  )
                : null,
          ),
          child: Center(
            child: Text(
              text,
              style: TypographyConstants.textStyle12Pt(
                context,
                color: textColor,
                isBold: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
