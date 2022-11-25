import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclassroom/api/repositories/auth_repository.dart';
import 'package:iclassroom/app/bloc/bloc.dart';
import 'package:iclassroom/app/modules/logged_area/logged_area_module.dart';
import 'package:iclassroom/app/modules/login_module/pages/login.dart';
import 'package:iclassroom/app/modules/login_module/pages/reminder_password.dart';
import 'package:iclassroom/app/pages/splash.dart';

import 'modules/register_module/pages/register.dart';
import 'pages/wellcome.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
          repository: context.read<AuthRepository>(),
        ),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: _theme(context),
          initialRoute: '/',
          routes: {
            '/': (_) => const SplashPage(),
            '/reminder': (_) => const ReminderPasswordPage(),
            '/welcome': (_) => const WelcomePage(),
            '/login': (_) => const LoginPage(),
            '/register': (_) => const RegisterPage(),
            '/logged_area': (_) => const LoggedAreaModule(),
          },
        ),
      ),
    );
  }

  ThemeData _theme(BuildContext context) {
    return ThemeData(
      primaryColor: const Color(0xFF495796),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            secondary: const Color(0xFF2E3760),
          ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size.fromHeight(30)),
          padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
          backgroundColor: MaterialStateProperty.all(
            const Color(0xFF495796),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(const Color(0xFF495796)),
          minimumSize: MaterialStateProperty.all(const Size.fromHeight(30)),
          padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            const BorderSide(
              style: BorderStyle.solid,
              width: 2,
              color: Color(0xFF495796),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Color(0xFF495796),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
    );
  }
}
