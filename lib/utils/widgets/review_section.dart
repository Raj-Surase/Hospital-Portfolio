import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/main.dart';
import 'package:hospital_management_system_portfolio/utils/components/expanded_button.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/image_constant.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';
import 'package:hospital_management_system_portfolio/utils/widgets/review_container.dart';
import 'package:url_launcher/url_launcher.dart';

class ReviewSection extends StatelessWidget {
  ReviewSection({
    super.key,
  });

  // Redirect to Google Maps
  Future<void> _openGoogleMaps() async {
    final url = 'https://maps.app.goo.gl/j6h4RQjAdJRrGDkw9';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw Exception('Could not open the map.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ValueConstants.screenHeight(context) * 0.6,
      width: ValueConstants.screenWidth(context) * 0.95,
      padding: EdgeInsets.all(
        ValueConstants.padding16Px(context),
      ),
      decoration: BoxDecoration(
        color: ColorConstants.surfaceFG,
        borderRadius: BorderRadius.circular(
          ValueConstants.radius20Px(context),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Reviews",
                style: TypographyConstants.textStyle20Pt(
                  context,
                  color: ColorConstants.textHighEm,
                  isBold: true,
                ),
              ),
              ExpandedButton(
                color: ColorConstants.accentPurple,
                isBorder: true,
                text: "Add review",
                textColor: ColorConstants.accentPurple,
                onTap: _openGoogleMaps,
              ),
            ],
          ),
          WidgetConstants.space16Pt(context: context, vertical: true),
          ValueConstants.isMobileDevice(context)
              ? Column(
                  children: [
                    ReviewContainer(
                      username: "Raj Surase",
                      message: "Great Shop",
                      profileUrl: ImageConstants.mapImage,
                      rating: 5,
                    ),
                  ],
                )
              : Row(
                  children: [
                    ReviewContainer(
                      username: "Raj Surase",
                      message: "Great Shop",
                      profileUrl: ImageConstants.mapImage,
                      rating: 5,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
