import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iclassroom/app/shared/widgets/components/iclassroom_post_card.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({Key? key}) : super(key: key);

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  int _selectedFilter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            )
          ]
        ),
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Criar publicação'),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      actions: [
        Row(
          children: [
            const Text(
              '232425',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            GestureDetector(
              onTap: () {
                Clipboard.setData(
                  const ClipboardData(
                    text: '232425',
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                        'Código da turma copiado para área de transferência')));
              },
              child: const Icon(
                Icons.copy,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }

  _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              color: Theme.of(context).primaryColor,
              child: Column(
                children: [
                  const SizedBox(height: 56),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Compiladores',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '23 alunos',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFC9CAA4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          '2 atividades',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 28,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  _filterTag('Todos', 0),
                  const SizedBox(width: 12),
                  _filterTag('Publicações', 1),
                  const SizedBox(width: 12),
                  _filterTag('Perguntas', 2),
                  const SizedBox(width: 12),
                  _filterTag('Atividades', 3),
                  const SizedBox(width: 12),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const IClassroomPostCard(),
            const SizedBox(height: 12),
            const IClassroomPostCard(),
            const SizedBox(height: 12),
            const IClassroomPostCard(),
          ],
        ),
      ),
    );
  }

  _filterTag(String filter, int position) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedFilter = position;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context)
              .primaryColor
              .withOpacity(_selectedFilter == position ? 1 : .2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          filter,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
