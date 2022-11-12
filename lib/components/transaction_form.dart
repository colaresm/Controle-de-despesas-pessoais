import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
            ),
            FlatButton(
              textColor: Colors.purple,
              onPressed: () {
                print(valueController.text);
                print(titleController.text);
              },
              child: Text('Nova Transação'),
            )
          ],
        ),
      ),
    );
  }
}
