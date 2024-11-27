import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/components/expanded_button.dart';
import 'package:hospital_management_system_portfolio/utils/components/reusable_textfield.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/image_constant.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';

class Footer extends StatelessWidget {
  Footer({
    super.key,
  });

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        ValueConstants.padding30Px(context),
      ),
      color: ColorConstants.containerBG,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: ValueConstants.screenWidth(context) * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        ImageConstants.logoImage,
                      ),
                    ),
                    WidgetConstants.space8Pt(context: context, vertical: false),
                    Text(
                      "Waghadkar Hospital",
                      style: TypographyConstants.textStyle18Pt(
                        context,
                        color: ColorConstants.textHighEm,
                        isBold: true,
                      ),
                    ),
                  ],
                ),
                WidgetConstants.space24Pt(vertical: true, context: context),
                Text(
                  "Waghadkar General Hospital, \nDharangaon Road, near Sambhaji Statue, \nnear Vispute Saraf, Vivekanand Nagar, \nKopargaon, Maharashtra 423601",
                  style: TypographyConstants.textStyle14Pt(
                    context,
                    color: ColorConstants.textHighEm,
                  ),
                ),
                WidgetConstants.space12Pt(vertical: true, context: context),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(
                //         Icons.facebook_rounded,
                //         size: ValueConstants.icon24Px(context),
                //       ),
                //     ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(
                //         Icons.facebook_rounded,
                //         size: ValueConstants.icon24Px(context),
                //       ),
                //     ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(
                //         Icons.facebook_rounded,
                //         size: ValueConstants.icon24Px(context),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          WidgetConstants.space64Pt(vertical: false, context: context),
          SizedBox(
            width: ValueConstants.screenWidth(context) * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get in touch.",
                  style: TypographyConstants.textStyle26Pt(context,
                      color: ColorConstants.textHighEm, isBold: false),
                ),
                WidgetConstants.space20Pt(vertical: true, context: context),
                ReusableTextField(
                  labelText: "Email",
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email or email';
                    }
                    return null;
                  },
                ),
                WidgetConstants.space16Pt(vertical: true, context: context),
                ReusableTextField(
                  labelText: "Message",
                  controller: _bodyController,
                  maxLines: 4,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the message';
                    }
                    return null;
                  },
                ),
                WidgetConstants.space16Pt(vertical: true, context: context),
                ExpandedButton(
                  color: ColorConstants.accentPurple,
                  isFill: true,
                  textColor: ColorConstants.textLowEm,
                  text: "Send",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
