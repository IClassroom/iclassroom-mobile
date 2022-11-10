import 'package:flutter/material.dart';
import 'package:iclassroom/app/modules/register_module/pages/register.dart';
import 'package:iclassroom/app/shared/iclassroom_module.dart';

class RegisterModule extends StatefulWidget {
  const RegisterModule({Key? key}) : super(key: key);

  @override
  State<RegisterModule> createState() => _RegisterModuleState();
}

class _RegisterModuleState extends State<RegisterModule> {
  @override
  Widget build(BuildContext context) {
    return const IclassroomModule(
      routes: {
        '/': RegisterPage(),
      },
    );
  }
}
