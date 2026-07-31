// widgets/app_rich_text.dart
import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart';

class AppRichText extends StatelessWidget {
  final VoidCallback? onTap;

  const AppRichText({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Termo de Serviço ',
              style: TextStyle(
                color: AppColors.preto,
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: 'e ',
              style: TextStyle(color: AppColors.cinza, fontSize: 12),
            ),
            TextSpan(
              text: 'Políticas de Privacidade',
              style: TextStyle(
                color: AppColors.preto,
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
