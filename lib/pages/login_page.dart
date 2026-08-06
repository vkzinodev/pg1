import 'package:flutter/material.dart';
import 'package:pg1/pages/signup_page.dart';
import 'package:pg1/shered/app_colors.dart';
import 'package:pg1/shered/app_text_button.dart';
import 'package:pg1/shered/app_text_field.dart';
import 'package:pg1/shered/wigdgets/app_elevated_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  bool isActiveButton = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    isActiveButton = email.trim().isNotEmpty && senha.trim().isNotEmpty;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),

              //IMAGEM LOGO
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 125,
                  height: 125,
                ),
              ),
              // TÍTULO
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '+DevsEcomm',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),
                ),
              ),

              const SizedBox(height: 102),

              // CAMPO DE EMAIL
              AppTextField(
                hintText: 'email@dominio.com',
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                  print('Email: $value');
                },
              ),

              const SizedBox(height: 11),

              // CAMPO DE SENHA
              AppTextField(
                hintText: '****************',
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    senha = value;
                  });
                  print('Senha: $value');
                },
              ),
              // LEMBRAR-ME CHECKBOX
              const SizedBox(height: 8),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    // ignore: deprecated_member_use
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                      // ignore: deprecated_member_use
                      (states) => states.contains(MaterialState.selected)
                          ? AppColors.preto
                          : AppColors.branco,
                    ),
                    checkColor: AppColors.branco,
                    side: const BorderSide(color: AppColors.preto),
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                      print('Lembrar-me: $rememberMe');
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Lembrar-me',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // ESQUECI MINHA SENHA
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
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.preto,
                      fontFamily: 'Inter',
                      fontSize: 12,
                      height: 1.5,
                      letterSpacing: 0,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 17),

              // BOTÃO ENTRAR - FAZ O LOGIN
              AppElevatedButton(
                label: 'Entrar',
                onPressed: isActiveButton
                    ? () {
                        // Aqui você pode adicionar a lógica de login
                        print('Email: $email');
                        print('Senha: $senha');
                      }
                    : null,
              ),

              const SizedBox(height: 16),

              // BOTÃO CADASTRAR - VAI PARA SIGNUP PAGE
              AppTextButton(
                label: 'Cadastrar-se',
                onPressed: () {
                  Navigator.pushNamed(context, SignupPage.routeName);
                },
              ),

              const SizedBox(height: 100),

              // TERMOS E POLÍTICA
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 68),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Termos de Serviço ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'e ',
                          style: TextStyle(color: AppColors.cinza),
                        ),
                        TextSpan(
                          text: 'Política de Privacidade',
                          style: TextStyle(color: Colors.black),
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
