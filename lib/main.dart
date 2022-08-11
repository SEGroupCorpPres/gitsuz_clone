import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gitsuz/bloc/settings/app_settings_bloc.dart';
import 'package:gitsuz/cubit/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:gitsuz/repositories/auth_repository.dart';
import 'package:gitsuz/bloc/auth/auth_bloc.dart';
import 'package:gitsuz/pages/splash/splash.dart';
import 'package:gitsuz/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
            ),
          ),
          BlocProvider<AppSettingsBloc>(
            create: (context) => AppSettingsBloc()
              ..add(
                InitAppSettings(),
              ),
          ),
          BlocProvider<BottomNavBarCubit>(create: (context) => BottomNavBarCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
