import 'package:flutter/material.dart';
import 'package:listagem/app/ui/invoice_list/invoice_list_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InvoiceListPage(),
    );
  }
}
