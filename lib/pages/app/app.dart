// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gitsuz/bloc/bloc/app_bloc.dart';
// import 'package:gitsuz/cubit/signin/signin_cubit.dart';
// import 'package:gitsuz/pages/app/routes.dart';
// import 'package:gitsuz/pages/auth/auth.dart';
// import 'package:gitsuz/pages/home/view/home_page.dart';
// import 'package:gitsuz/pages/intro/intro_home.dart';
// import 'package:gitsuz/pages/splash/splash.dart';
// import 'package:gitsuz/theme/theme.dart';
// //
// // class App extends StatelessWidget {
// //   const App({
// //     super.key,
// //     required this.authenticationRepository,
// //   });
// //
// //   final AuthenticationRepository authenticationRepository;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return RepositoryProvider.value(
// //       value: authenticationRepository,
// //       child: BlocProvider(
// //         create: (_) => AppBloc(
// //           authenticationRepository: authenticationRepository,
// //         ),
// //         child: const AppView(),
// //       ),
// //     );
// //   }
// // }
//
// // class AppView extends StatelessWidget {
// //   const AppView({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       theme: theme,
// //       home: FlowBuilder<AppStatus>(
// //         state: context.select((AppBloc bloc) => bloc.state.status),
// //         onGeneratePages: onGenerateAppViewPages,
// //       ),
// //       onGenerateRoute: (_) => SplashScreen.route(),
// //     );
// //   }
// // }
//
// class AppView extends StatefulWidget {
//   const AppView({super.key});
//
//   @override
//   State<AppView> createState() => _AppViewState();
// }
//
// class _AppViewState extends State<AppView> {
//   final _navigatorKey = GlobalKey<NavigatorState>();
//
//   NavigatorState get _navigator => _navigatorKey.currentState!;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: theme,
//       navigatorKey: _navigatorKey,
//       builder: (context, child) {
//         return BlocListener<AppBloc, AppState>(
//           listener: (context, state) {
//             switch (state.status) {
//               case AppStatus.authenticated:
//                 _navigator.pushAndRemoveUntil<void>(
//                   HomePage.route(),
//                   (route) => false,
//                 );
//                 break;
//               case AppStatus.unauthenticated:
//                 _navigator.pushAndRemoveUntil<void>(
//                   IntroHome.route(),
//                   (route) => false,
//                 );
//                 break;
//             }
//           },
//           child: child,
//         );
//       },
//       onGenerateRoute: (_) => SplashScreen.route(),
//     );
//   }
// }
