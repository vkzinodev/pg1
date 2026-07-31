// pages/login_page.dart
import 'package:flutter/material.dart';

import 'package:pg1/shered/app_colors.dart';
import 'package:pg1/shered/app_text_button.dart';
import 'package:pg1/shered/app_text_field.dart';
import 'package:pg1/shered/wigdgets/app_elevated_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: AppColors.preto,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Título
              const Text(
                '+DevsEcomm',
                style: TextStyle(
                  color: AppColors.cinza,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 40),

              // Campo Email
              const AppTextField(
                hintText: 'email@dominio.com',
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 16),

              // Campo Senha
              const AppTextField(
                hintText: 'Digite sua senha',
                obscureText: true,
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: AppColors.cinza,
                  size: 20,
                ),
              ),

              const SizedBox(height: 12),

              // Esqueci minha senha
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      color: AppColors.cinza,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Botão Entrar
              AppElevatedButton(label: 'Entrar', onPressed: () {}),

              const SizedBox(height: 12),

              // Botão Cadastrar-se (estilo texto)
              AppTextButton(label: 'Cadastrar-se', onPressed: () {}),

              const Spacer(),

              // Termos e Políticas
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: GestureDetector(
                  onTap: () {},
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Termos de Serviço ',
                          style: TextStyle(
                            color: AppColors.preto,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '⇨ ',
                          style: TextStyle(
                            color: AppColors.cinza,
                            fontSize: 13,
                          ),
                        ),
                        TextSpan(
                          text: 'Política de Privacidade',
                          style: TextStyle(
                            color: AppColors.preto,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
