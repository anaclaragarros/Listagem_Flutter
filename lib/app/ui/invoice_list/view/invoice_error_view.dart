import 'package:flutter/material.dart';
import 'package:listagem/app/theme/app_colors.dart';

class InvoiceErrorView extends StatelessWidget {
  final VoidCallback onRetry;

  const InvoiceErrorView({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Erro ao Carregar Dados"),
          backgroundColor: AppColors.danger,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  color: AppColors.danger,
                  size: 60,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Não foi possível carregar os dados.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.danger,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Verifique sua conexão com a internet ou tente novamente mais tarde.',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.border,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: onRetry,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.danger,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Tentar Novamente',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
