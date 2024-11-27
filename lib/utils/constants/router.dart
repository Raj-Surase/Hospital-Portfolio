// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:hospital_management_system_portfolio/screens/authentication/login_page.dart';
// import 'package:hospital_management_system_portfolio/screens/course/screens/form/user_information.dart';
// import 'package:hospital_management_system_portfolio/screens/course/screens/payment/payment_screen.dart';
// import 'package:hospital_management_system_portfolio/screens/dashboard/dashboard.dart';
// import 'package:hospital_management_system_portfolio/screens/download_page.dart';
// // import 'package:hospital_management_system_portfolio/screens/course_details/course_details.dart';
// import 'package:hospital_management_system_portfolio/screens/navigator_page.dart';

// class AppRoutes {
//   AppRoutes._();

//   static const String initialRoute = "/";
//   static const String loginRoute = "/login";
//   static const String userInfoRoute = "/form";
//   static const String paymentRoute = "/payment";
//   static const String dashboardRoute = "/dashboard";
//   static const String downloadRoute = "/download/userinformation.xlsx";

//   static final GoRouter router = GoRouter(
//     initialLocation: initialRoute,
//     routes: [
//       GoRoute(
//         path: initialRoute,
//         builder: (context, state) => const NavigatorPage(),
//       ),
//       GoRoute(
//         path: loginRoute,
//         builder: (context, state) => const LoginPage(),
//       ),
//       GoRoute(
//         path: userInfoRoute,
//         builder: (context, state) => const UserInformation(),
//       ),
//       GoRoute(
//         path: paymentRoute,
//         builder: (context, state) => const PaymentScreen(),
//       ),
//       GoRoute(
//         path: dashboardRoute,
//         builder: (context, state) {
//           final courseId = state.uri.queryParameters['courseId'].toString();
//           return Dashboard(
//             courseId: courseId,
//           );
//         },
//       ),
//       GoRoute(
//         path: downloadRoute,
//         builder: (context, state) {
//           return const DownloadPage();
//         },
//       ),
//     ],
//   );
// }
