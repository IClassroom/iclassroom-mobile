import 'package:flutter/material.dart';
import 'package:iclassroom/api/models/class.dart';

class IClassroomClassCard extends StatefulWidget {
  final Class classroom;

  const IClassroomClassCard({Key? key, required this.classroom})
      : super(key: key);

  @override
  State<IClassroomClassCard> createState() => _IClassroomClassCardState();
}

class _IClassroomClassCardState extends State<IClassroomClassCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/class'),
      child: Container(
        width: 264,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFD9D9D9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.classroom.classDay.join('/'),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  widget.classroom.times.join('/'),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Text(
              widget.classroom.className,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFA4ABCA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'atividades em dia',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Color(0xFF495796),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person, color: Colors.white, size: 12,),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Color(0xFF495796),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person, color: Colors.white, size: 12,),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Color(0xFF495796),
                    shape: BoxShape.circle,
                  ),
                  child: const Text('+12', style: TextStyle(color: Colors.white, fontSize: 10),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
