import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hospital_management_system_portfolio/utils/components/expanded_button.dart';
import 'package:hospital_management_system_portfolio/utils/components/reusable_textfield.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/image_constant.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';
import 'package:hospital_management_system_portfolio/utils/constants/widgets.dart';
import 'package:hospital_management_system_portfolio/utils/widgets/animated_map_widget.dart';
import 'package:hospital_management_system_portfolio/utils/widgets/footer.dart';
import 'package:hospital_management_system_portfolio/utils/widgets/hero_section.dart';
import 'package:hospital_management_system_portfolio/utils/widgets/information_section.dart';
import 'package:hospital_management_system_portfolio/utils/widgets/review_section.dart';
import 'package:hospital_management_system_portfolio/utils/widgets/text_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.surfaceBG,
        primaryColor: ColorConstants.accentPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Waghadkar Hospital'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController = ScrollController();
  bool _isAppBarVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isAppBarVisible) {
          setState(() {
            _isAppBarVisible = false;
          });
        }
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_isAppBarVisible) {
          setState(() {
            _isAppBarVisible = true;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      height: ValueConstants.isMobileDevice(context)
                          ? ValueConstants.screenHeight(context) * 0.11
                          : ValueConstants.screenHeight(context) * 0.18,
                    ),
                    HeroSection(),
                    WidgetConstants.space32Pt(vertical: true, context: context),
                    InformationSection(),
                    WidgetConstants.space32Pt(context: context, vertical: true),
                    TextSection(),
                    WidgetConstants.space32Pt(context: context, vertical: true),
                    ReviewSection(),
                    WidgetConstants.space64Pt(context: context, vertical: true),
                    // Maps
                    AnimatedMapWidget(),

                    WidgetConstants.space64Pt(context: context, vertical: true),
                    //Footer
                    Footer(),
                  ],
                ),
              ),
            ],
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 400),
            top: _isAppBarVisible
                ? ValueConstants.screenHeight(context) * 0.02
                : -(kToolbarHeight +
                    ValueConstants.screenHeight(context) * 0.02 +
                    10), // Completely hide the AppBar
            left: ValueConstants.screenWidth(context) * 0.02, // Left margin
            right: ValueConstants.screenWidth(context) * 0.02, // Right margin
            child: Container(
              width: ValueConstants.screenWidth(context) *
                  0.95, // Maintain 95% width
              padding: WidgetConstants.paddingDefault(context),
              decoration: BoxDecoration(
                color: ColorConstants.surfaceFG, // AppBar background
                borderRadius: BorderRadius.circular(
                  ValueConstants.radius16Px(context),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Spacer(),
                  ExpandedButton(
                    color: ColorConstants.containerBG,
                    text: "Contact Us",
                    isBorder: true,
                    textColor: ColorConstants.accentPurple,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
