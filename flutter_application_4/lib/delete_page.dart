import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';



class DeletePage extends StatelessWidget {
  final Product product;
  final VoidCallback onDelete;

  const DeletePage({required this.product, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Вы уверены?')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Вы уверены, что хотите удалить ${product.name}?'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Вернуться назад
              },
              child: const Text('Нет'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                onDelete(); // Вызов функции удаления
                Navigator.pop(context); // Вернуться назад
              },
              child: const Text('Да'),
            ),
          ],
        ),
      ),
    );
  }
}
