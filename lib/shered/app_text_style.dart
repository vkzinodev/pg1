import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart'; // Ajuste o caminho conforme sua estrutura

// Classe responsável por armazenar os estilos de texto do aplicativo
class AppTextStyle {
  static TextStyle title = TextStyle(
    color: AppColors.preto, // Use a cor que você definiu no AppColors
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle buttonLabel = TextStyle(
    color: AppColors.branco, // Use a cor que você definiu no AppColors
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
