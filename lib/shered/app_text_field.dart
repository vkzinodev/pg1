// shared/app_text_field.dart
import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart';
import 'package:pg1/shered/widgets/visibility_button.dart';

class AppTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final BorderRadius? inputBorder;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
    this.decoration,
    this.inputBorder,
    this.onChanged,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool isPasswordVisible;

  @override
  void initState() {
    super.initState();
    isPasswordVisible = !widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText && !isPasswordVisible,
      keyboardType: widget.keyboardType,
      decoration:
          widget.decoration ??
          InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: AppColors.cinza, fontSize: 14),
            suffixIcon: widget.obscureText
                ? PasswordVisibilityButton(
                    isVisible: isPasswordVisible,
                    onVisibilityChanged: (visible) {
                      setState(() {
                        isPasswordVisible = visible;
                      });
                    },
                  )
                : widget.suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: widget.inputBorder ?? BorderRadius.circular(14),
              borderSide: const BorderSide(
                color: AppColors.cinzaBorda,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: widget.inputBorder ?? BorderRadius.circular(14),
              borderSide: const BorderSide(
                color: AppColors.cinzaBorda,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: widget.inputBorder ?? BorderRadius.circular(14),
              borderSide: const BorderSide(color: AppColors.preto, width: 1.5),
            ),
            filled: false,
          ),
    );
  }
}
