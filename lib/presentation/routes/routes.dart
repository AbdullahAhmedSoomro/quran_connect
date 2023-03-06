// import 'package:flutter/material.dart';
//
// abstract class RouteArg {
//   const RouteArg();
//   String get parsedPath => uri.toString();
//   Uri get uri;
// }
//
// abstract class Screen<T extends RouteArg> {
//   T get arg;
// }
//
// class AppRouter {
//   static final _rootNavigatorKey = GlobalKey<NavigatorState>();
//   static final _shellNavigatorKey = GlobalKey<NavigatorState>();
//
//   static final GoRouter appRoutes = GoRouter(
//     debugLogDiagnostics: true,
//     initialLocation: SplashScreenRoute.path,
//     navigatorKey: _rootNavigatorKey,
//     routes: <RouteBase>[
//       ///SplashScreen
//       GoRoute(
//         path: SplashScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           const arg = SplashScreenRoute();
//           return const SplashScreen(arg: arg);
//         },
//       ),
//
//       /// MainScreen
//       ShellRoute(
//         navigatorKey: _shellNavigatorKey,
//         builder: (context, state, child) {
//           const arg = MainScreenRoute();
//           return MainScreen(arg: arg, child: child);
//         },
//         routes: <RouteBase>[
//           /// main/year
//           GoRoute(
//             path: HomeScreenRoute.path,
//             parentNavigatorKey: _shellNavigatorKey,
//             builder: (context, state) {
//               const arg = HomeScreenRoute();
//               return const HomeScreen(arg: arg);
//             },
//           ),
//           GoRoute(
//             path: QuranScreenRoute.path,
//             parentNavigatorKey: _shellNavigatorKey,
//             builder: (context, state) {
//               const arg = QuranScreenRoute();
//               return const QuranScreen(arg: arg);
//             },
//           ),
//           GoRoute(
//             path: EmotionScreenRoute.path,
//             parentNavigatorKey: _shellNavigatorKey,
//             builder: (context, state) {
//               const arg = EmotionScreenRoute();
//               return const EmotionScreen(arg: arg);
//             },
//           ),
//           GoRoute(
//             path: MoreScreenRoute.path,
//             parentNavigatorKey: _shellNavigatorKey,
//             builder: (context, state) {
//               const arg = MoreScreenRoute();
//               return const MoreScreen(arg: arg);
//             },
//           ),
//         ],
//       ),
//
//       GoRoute(
//         path: AyahEmotionScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = AyahEmotionScreenRoute();
//           return AyahEmotionScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: PrayerTimeScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = PrayerTimeScreenRoute();
//           return PrayerTimeScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: QuranByParaScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = QuranByParaScreenRoute();
//           return QuranByParaScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: QuranBySuratScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = QuranBySuratScreenRoute();
//           return QuranBySuratScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: HolyQuranScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = HolyQuranScreenRoute();
//           return HolyQuranScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: DuaEmotionScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = DuaEmotionScreenRoute();
//           return DuaEmotionScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: HadithEmotionScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = HadithEmotionScreenRoute();
//           return HadithEmotionScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: HusnaEmotionScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = HusnaEmotionScreenRoute();
//           return HusnaEmotionScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: SuratEmotionScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = SuratEmotionScreenRoute();
//           return SuratEmotionScreen(arg: arg);
//         },
//       ),
//       GoRoute(
//         path: ContentDetailScreenRoute.path,
//         parentNavigatorKey: _rootNavigatorKey,
//         builder: (context, state) {
//           final arg = ContentDetailScreenRoute();
//           return ContentDetailScreen(arg: arg);
//         },
//       ),
//     ],
//   );
// }
//
// extension XBuildContext on BuildContext {
//   void goToScreen({required RouteArg arg}) {
//     go(arg.parsedPath);
//   }
//
//   void pushScreen({required RouteArg arg}) {
//     push(arg.parsedPath);
//   }
//
//   String get location => GoRouter.of(this).location;
// }
