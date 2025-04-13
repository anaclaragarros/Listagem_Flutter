import 'package:flutter/material.dart';

class InvoiceErrorView extends StatelessWidget {
  const InvoiceErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Erro ao carregar dados"),
      ],
    );
  }
}
