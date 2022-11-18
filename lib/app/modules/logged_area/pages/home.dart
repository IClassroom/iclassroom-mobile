import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclassroom/api/models/class.dart';
import 'package:iclassroom/api/models/user.dart';
import 'package:iclassroom/api/repositories/auth_repository.dart';
import 'package:iclassroom/app/shared/widgets/components/iclassroom_class_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListTile(
                title: const Text(
                  'Bem vindo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                subtitle: Text(
                  context.read<AuthRepository>().user?.name?.split(' ')[0] ??
                      'Sem nome',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Turmas'),
                  Text(
                    'Ver todos',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 112,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  IClassroomClassCard(
                    classroom: Class(
                      className: 'Compiladores',
                      days: ['Seg', 'Qua'],
                      times: ['7:20'],
                      users: [
                        User(
                          id: 10,
                          name: 'Yago',
                          email: 'ytf@ic.ufal.br',
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  IClassroomClassCard(
                    classroom: Class(
                      className: 'PAA',
                      days: ['Ter', 'Qui'],
                      times: ['9:10', '11:00'],
                      users: [
                        User(
                          id: 10,
                          name: 'Yago',
                          email: 'ytf@ic.ufal.br',
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  IClassroomClassCard(
                    classroom: Class(
                      className: 'Processamento digital de imagens',
                      days: ['Ter', 'Qui'],
                      times: ['11:10', '13:00'],
                      users: [
                        User(
                          id: 10,
                          name: 'Yago',
                          email: 'ytf@ic.ufal.br',
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Atividades'),
                  Text(
                    'Ver todos',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  Container(
                    color: Colors.red,
                    width: 150,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    color: Colors.red,
                    width: 150,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    color: Colors.red,
                    width: 150,
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
