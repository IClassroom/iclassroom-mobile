import 'package:flutter/material.dart';

class IClassroomActivityCard extends StatefulWidget {
  const IClassroomActivityCard({Key? key}) : super(key: key);

  @override
  State<IClassroomActivityCard> createState() => _IClassroomActivityCardState();
}

class _IClassroomActivityCardState extends State<IClassroomActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PAA',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '5 dias',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Flexible(
            flex: 10,
            child: Text('João pretende armazenar uma coleção de dados referentes a cerca de um milhão de pessoas...', style: TextStyle(color: Colors.grey, fontSize: 12),),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFFCAA4A4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text('Difícil', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
              ),
              const Icon(Icons.picture_as_pdf)
            ],
          ),
        ],
      ),
    );
  }
}
