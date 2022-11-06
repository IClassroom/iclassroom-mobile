import 'package:flutter/material.dart';
import 'package:iclassroom/app/modules/login_module/pages/login.dart';
import 'package:iclassroom/app/shared/iclassroom_module.dart';

import 'teste_module/teste_module.dart';

class LoginModule extends StatefulWidget {
  const LoginModule({Key? key}) : super(key: key);

  @override
  State<LoginModule> createState() => _LoginModuleState();
}

class _LoginModuleState extends State<LoginModule> {
  final Map<String, Widget> _routes = {
    '/': const LoginPage(),
    '/reminder': const TestModule(),
    '/aaa': const TestModule(),
  };

  @override
  Widget build(BuildContext context) {
    return IclassroomModule(routes: _routes);
  }
}
