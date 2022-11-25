import 'package:flutter/material.dart';

class ResponsePage extends StatefulWidget {
  const ResponsePage({Key? key}) : super(key: key);

  @override
  State<ResponsePage> createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Atividade 1',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              'PAA - Atividade 1',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'João tem uma base de dados com 500000 registros imcompletos, implemente um algoritmo que preencha pelo menos 80% dos dados faltantes de maneira eficiente.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'atividade.pdf',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.picture_as_pdf, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 12),
            TextFormField(
              minLines: 6,
              maxLines: 6,
              decoration: const InputDecoration(
                hintText: 'Escreva sua responsta',
                hintStyle: TextStyle(
                  fontSize: 12,
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: Color(
                  0xFFCCCCCC,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(
                  Icons.attach_file,
                  color: Colors.grey,
                ),
                Text(
                  'Anexar a resposta',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'resposta.pdf',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.picture_as_pdf, color: Colors.grey),
              ],
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('Enviar resposta'))
          ],
        ),
      ),
    );
  }
}
