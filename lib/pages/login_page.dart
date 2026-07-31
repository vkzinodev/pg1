import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart';
import 'package:pg1/shered/app_text_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),
              Text(
                '+DevsEcomm',
                style: TextStyle(
                  color: AppColors.cinza,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(flex: 2),

              // Campo de Email
              TextField(
                decoration: InputDecoration(
                  hintText: "email@dominio.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColors.cinza),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColors.cinza),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColors.cinza),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Campo de Senha (agora com hint correto)
              TextField(
                obscureText: true, // Para esconder a senha
                decoration: InputDecoration(
                  hintText: "Digite sua senha",
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                  ), // Ícone de visibilidade
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColors.cinza),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColors.cinza),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColors.cinza),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              TextButton(
                onPressed: () {},
                child: const Text("Esqueci minha senha"),
              ),

              const SizedBox(height: 16),

              // Botão Entrar
              SizedBox(
                width: double.infinity,
                child: 
                AppElevated_button(),
              ),

              const SizedBox(height: 8),

              // Botão Sair
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sair'),
                ),
              ),

              const Spacer(flex: 2),

              // Termos e Políticas
              GestureDetector(
                onTap: () {},
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Termo de Serviço ',
                        style: TextStyle(color: AppColors.preto),
                      ),
                      TextSpan(
                        text: 'e ',
                        style: TextStyle(color: AppColors.cinza),
                      ),
                      TextSpan(
                        text: 'Politicas de Privacidade',
                        style: TextStyle(color: AppColors.preto),
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppElevated_button extends StatelessWidget {
  const AppElevated_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Entrar'),
      style: ElevatedButton.styleFrom(
    
        minimumSize: Size.fromHeight(48),
        foregroundColor: AppColors.branco,
        backgroundColor: AppColors.preto,
        textStyle: AppTextStyle.buttonLabel,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
    );
  }
}
