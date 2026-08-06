import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart';
import 'package:pg1/shered/app_text_field.dart';
import 'package:pg1/shered/wigdgets/app_elevated_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  static const String routeName = '/signup';

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String email = '';
  String nome = '';
  String senha = '';
  String confirmarSenha = '';
  bool agreeTerms = false;

  bool get canContinue {
    return email.trim().isNotEmpty &&
        nome.trim().isNotEmpty &&
        senha.trim().isNotEmpty &&
        confirmarSenha.trim().isNotEmpty &&
        agreeTerms;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Criar conta',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  'Criar uma conta',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              const Center(
                child: Text(
                  'Insira seus dados para iniciar suas compras',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              _buildInputField(
                AppTextField(
                  hintText: 'email@dominio.com',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => setState(() => email = value),
                ),
              ),

              const SizedBox(height: 15),

              _buildInputField(
                AppTextField(
                  hintText: 'nome',
                  keyboardType: TextInputType.name,
                  onChanged: (value) => setState(() => nome = value),
                ),
              ),

              const SizedBox(height: 15),

              _buildInputField(
                AppTextField(
                  hintText: 'senha',
                  obscureText: true,
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                    color: AppColors.cinza,
                    size: 20,
                  ),
                  onChanged: (value) => setState(() => senha = value),
                ),
              ),

              const SizedBox(height: 15),

              _buildInputField(
                AppTextField(
                  hintText: 'confirmar senha',
                  obscureText: true,
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                    color: AppColors.cinza,
                    size: 20,
                  ),
                  onChanged: (value) => setState(() => confirmarSenha = value),
                ),
              ),

              const SizedBox(height: 230),

              Container(
                width: double.infinity,

                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                    children: [
                      const TextSpan(
                        text:
                            'Ao clicar em continuar, você concorda com os nossos\n',
                      ),
                      TextSpan(
                        text: 'Termos de Serviço',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(text: ' e com a '),
                      TextSpan(
                        text: 'Política de Privacidade',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: const Text(
                  'Li e concordo com os termos',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                value: agreeTerms,
                fillColor: MaterialStateProperty.resolveWith<Color>(
                  (states) => states.contains(MaterialState.selected)
                      ? AppColors.preto
                      : AppColors.branco,
                ),
                activeColor: AppColors.preto,
                checkColor: AppColors.branco,
                side: const BorderSide(color: AppColors.preto),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(() {
                    agreeTerms = value ?? false;
                  });
                },
              ),

              const SizedBox(height: 2),

              AppElevatedButton(
                label: 'Continuar',
                onPressed: canContinue
                    ? () => print('Continuar pressionado')
                    : null,
              ),

              const SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: child,
    );
  }
}
