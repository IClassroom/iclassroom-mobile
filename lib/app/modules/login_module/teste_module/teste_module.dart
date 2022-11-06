import 'package:flutter/material.dart';
import 'package:iclassroom/app/shared/iclassroom_module.dart';

class TestModule extends StatefulWidget {
  const TestModule({Key? key}) : super(key: key);

  @override
  State<TestModule> createState() => _TestModuleState();
}

class _TestModuleState extends State<TestModule> {
  final Map<String, Widget> _routes = {
    '/': const Scaffold(body: Center(child: Text('/'),),),
    '/test': const IclassroomModule(routes: {'/': Scaffold(body: Center(child: Text('teste')),)}),
  };

  @override
  Widget build(BuildContext context) {
    return IclassroomModule(routes: _routes);
  }
}
