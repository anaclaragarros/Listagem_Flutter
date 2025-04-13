import 'package:flutter/material.dart';
import 'package:listagem/app/model/invoice.dart';

class InvoiceLoadedView extends StatelessWidget {
  final List<Invoice> invoices;

  const InvoiceLoadedView({super.key, required this.invoices});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("Lista de invoices aqui"),
      ],
    );
  }
}
