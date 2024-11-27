import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';

class ReviewContainer extends StatelessWidget {
  final String username, message, profileUrl;
  final int rating; // Changed this to `final` for immutability
  ReviewContainer({
    required this.username,
    required this.message,
    required this.profileUrl,
    required this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ValueConstants.isMobileDevice(context)
          ? ValueConstants.screenWidth(context) * 0.9
          : ValueConstants.screenWidth(context) * 0.25,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.surfaceBG,
          borderRadius: BorderRadius.circular(
            ValueConstants.radius16Px(context),
          ),
        ),
        padding: EdgeInsets.all(
          ValueConstants.padding14Px(context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: SizedBox(
                        height: ValueConstants.container32Px(context),
                        width: ValueConstants.container32Px(context),
                        child:
                            Placeholder(), // Replace with actual profile image
                      ),
                    ),
                    WidgetConstants.space8Pt(vertical: false, context: context),
                    Text(
                      username,
                      style: TypographyConstants.textStyle12Pt(
                        context,
                        color: ColorConstants.textHighEm,
                        isBold: false,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: _buildStars(rating, context),
                ),
              ],
            ),
            WidgetConstants.space8Pt(context: context, vertical: true),
            Text(
              message,
              style: TypographyConstants.textStyle14Pt(
                context,
                color: ColorConstants.textHighEm,
              ),
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildStars(int rating, BuildContext context) {
    // Ensure the rating does not exceed 5
    final int validRating = rating.clamp(0, 5);
    return List.generate(5, (index) {
      return Icon(
        index < validRating
            ? Icons.star
            : Icons.star_border, // Full or empty star
        color: index < validRating ? Colors.amber : Colors.grey, // Star color
        size: ValueConstants.icon16Px(context), // Adjust star size if needed
      );
    });
  }
}
