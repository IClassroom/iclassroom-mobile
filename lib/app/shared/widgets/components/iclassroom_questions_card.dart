import 'package:flutter/material.dart';

class IClassroomQuestionCard extends StatefulWidget {
  const IClassroomQuestionCard({Key? key}) : super(key: key);

  @override
  State<IClassroomQuestionCard> createState() => _IClassroomQuestionCardState();
}

class _IClassroomQuestionCardState extends State<IClassroomQuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(17),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            Icons.person,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Row(
          children: [
            const Text(
              'Yago Taveiros',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(width: 4),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF495796),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Text('Compiladores', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),),
            )
          ],
        ),
        subtitle: const Text(
          'Como consigo instalar o Java 14?',
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}
