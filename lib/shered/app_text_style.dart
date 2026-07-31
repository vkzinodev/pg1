// shared/app_text_style.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  static TextStyle title = const TextStyle(
    color: AppColors.preto,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle buttonLabel = const TextStyle(
    color: AppColors.branco,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle hint = TextStyle(color: AppColors.cinza, fontSize: 14);
}
