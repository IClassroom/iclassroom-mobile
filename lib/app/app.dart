import 'package:flutter/material.dart';
import 'package:iclassroom/app/modules/login_module/login_module.dart';
import 'package:iclassroom/app/modules/register_module/register_module.dart';

import 'pages/wellcome.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _theme(context),
      initialRoute: '/',
      routes: {
        '/': (_) => const WelcomePage(),
        '/login': (_) => const LoginModule(),
        '/register': (_) => const RegisterModule(),
      },
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
      )
    );
  }
}
