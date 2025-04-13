import 'package:flutter/material.dart';
import 'package:listagem/app/model/invoice.dart';

class InvoiceDetailPage extends StatelessWidget {
  final Invoice invoice;

  const InvoiceDetailPage({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invoice ${invoice.id}"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Title: ${invoice.title}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Completed: ${invoice.completed ? 'Yes' : 'No'}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            'User ID: ${invoice.userId}',
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            'Invoice ID: ${invoice.id}',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
