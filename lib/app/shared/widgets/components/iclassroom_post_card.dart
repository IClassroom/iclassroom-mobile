import 'package:flutter/material.dart';

class IClassroomPostCard extends StatefulWidget {
  const IClassroomPostCard({Key? key}) : super(key: key);

  @override
  State<IClassroomPostCard> createState() => _IClassroomPostCardState();
}

class _IClassroomPostCardState extends State<IClassroomPostCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFCCCCCC),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                title: const Text(
                  'Rafael Amorim',
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text(
                  'Professor',
                  style: TextStyle(fontSize: 12),
                ),
                trailing: const Text(
                  '11/10 12:40',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'Pessoal, segue material de apoio para aula que vem, abs!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      'Scrum.pdf',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                    const Icon(
                      Icons.picture_as_pdf,
                      color: Colors.grey,
                      size: 16,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 14,
          width: 2,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            color: const Color(0xFFCCCCCC),
            child: Row(
              children: [
                const Text(
                  '3 Comentários',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                  ),
                ),
                const Spacer(),
                Text('Ver todos', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextFormField(
            decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFCCCCCC),
                border: InputBorder.none,
                hintText: 'Escreva um comentario',
                hintStyle: TextStyle(
                  fontSize: 11,
                )),
          ),
        ),
      ],
    );
  }
}
