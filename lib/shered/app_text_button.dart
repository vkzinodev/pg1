// widgets/app_text_button.dart
import 'package:flutter/material.dart';

import 'package:pg1/shered/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const AppTextButton({super.key, this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: AppColors.preto,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
