import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;

  NewTransactions(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: () => addTx(
                  titleController.text, double.parse(amountController.text)),
              child: Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
