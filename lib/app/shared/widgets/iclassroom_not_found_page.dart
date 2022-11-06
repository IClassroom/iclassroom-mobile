import 'package:flutter/material.dart';

class IclassroomNotFoundPage extends StatefulWidget {
  const IclassroomNotFoundPage({Key? key}) : super(key: key);

  @override
  State<IclassroomNotFoundPage> createState() => _IclassroomNotFoundPageState();
}

class _IclassroomNotFoundPageState extends State<IclassroomNotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Text(
          'Página não encontrada',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
