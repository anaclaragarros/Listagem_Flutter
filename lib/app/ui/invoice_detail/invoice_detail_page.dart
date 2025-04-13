import 'package:flutter/material.dart';
import 'package:listagem/app/model/invoice.dart';
import 'package:listagem/app/theme/app_colors.dart';

class InvoiceDetailPage extends StatelessWidget {
  final Invoice invoice;

  const InvoiceDetailPage({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invoice ${invoice.id}"),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.divider),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    invoice.title,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text('Completed: ', style: TextStyle(fontSize: 18)),
                      Icon(
                        invoice.completed ? Icons.check_circle : Icons.cancel,
                        color: invoice.completed ? AppColors.success : AppColors.danger,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 12),
                  Text('User ID: ${invoice.userId}', style: const TextStyle(fontSize: 16)),
                  Text('Invoice ID: ${invoice.id}', style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.background,
                foregroundColor: AppColors.primary,
                side: BorderSide(color: AppColors.primary),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
