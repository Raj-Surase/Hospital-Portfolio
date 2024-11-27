import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/constants/image_constant.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedMapWidget extends StatefulWidget {
  const AnimatedMapWidget({
    Key? key,
  }) : super(key: key);

  @override
  _AnimatedMapWidgetState createState() => _AnimatedMapWidgetState();
}

class _AnimatedMapWidgetState extends State<AnimatedMapWidget> {
  bool isHovered = false;

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
    final height = ValueConstants.isMobileDevice(context)
        ? ValueConstants.screenHeight(context) * 0.2
        : ValueConstants.screenHeight(context) * 0.7;
    final width = ValueConstants.screenWidth(context) * 0.95;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click, // Change cursor to hand pointer
      child: GestureDetector(
        onTap: _openGoogleMaps,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Map representation (Placeholder Image)
            ClipRRect(
              borderRadius: BorderRadius.circular(
                ValueConstants.radius20Px(context),
              ),
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Image.asset(
                  ImageConstants.mapImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Hover overlay with smooth animation
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: isHovered
                    ? Colors.black.withOpacity(0.3)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  ValueConstants.radius20Px(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
