// widgets/app_text_button.dart

import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? height;

  const AppTextButton({
    super.key,
    this.onPressed,
    required this.label,
    this.backgroundColor,
    this.foregroundColor,
    this.height = 42,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.branco,
          foregroundColor: foregroundColor ?? AppColors.preto,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColors.preto, width: 1),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.preto,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
