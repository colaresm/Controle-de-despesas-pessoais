import 'package:flutter/material.dart';
import '../models/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: EdgeInsets.all(10),
                child: Text('R\$ ' + (tr.value).toString()),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat('dd MM y').format(tr.date),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
