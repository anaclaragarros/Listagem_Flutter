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
      body: ListView(),
    );
  }
}
