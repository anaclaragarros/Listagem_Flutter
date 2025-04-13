import 'package:flutter/material.dart';
import 'package:listagem/app/theme/app_colors.dart';

class IconDetailButton extends StatelessWidget {
  final VoidCallback onPressed;

  const IconDetailButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.background,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(vertical: 4),
        ),
        onPressed: onPressed,
        child: const Icon(Icons.description_outlined, color: AppColors.primary),
      ),
    );
  }
}
