import 'package:flutter/material.dart';
import 'package:iclassroom/app/modules/logged_area/modules/home_module.dart';

class LoggedAreaModule extends StatefulWidget {
  const LoggedAreaModule({Key? key}) : super(key: key);

  @override
  State<LoggedAreaModule> createState() => _LoggedAreaModuleState();
}

class _LoggedAreaModuleState extends State<LoggedAreaModule> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    const HomeModule(),
    const Scaffold(
      body: Center(
        child: Text('Duvidas'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Turmas'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Atividades'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 10),
          ],
        ),
        child: BottomNavigationBar(
          onTap: (newIndex) {
            setState(() {
              _currentPage = newIndex;
            });
          },
          currentIndex: _currentPage,
          selectedIconTheme: const IconThemeData(
            size: 40,
          ),
          showUnselectedLabels: true,
          showSelectedLabels: false,
          unselectedItemColor: const Color(0xFF555555),
          unselectedLabelStyle: const TextStyle(color: Color(0xFF555555)),
          selectedItemColor: Theme.of(context).primaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer_outlined),
              label: 'Dúvidas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Turmas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz),
              label: 'Atividades',
            ),
          ],
        ),
      ),
    );
  }
}
