import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? height;

  const AppElevatedButton({
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
          backgroundColor: backgroundColor ?? AppColors.preto,
          foregroundColor: foregroundColor ?? AppColors.branco,

          elevation: 0,

          padding: const EdgeInsets.symmetric(horizontal: 16),

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),

        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.branco,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
