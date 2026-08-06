import 'package:flutter/material.dart';
import 'package:pg1/shered/app_colors.dart';

/// Widget que funciona como botão de alternância de visibilidade de senha
class PasswordVisibilityButton extends StatefulWidget {
  /// Se a senha está visível
  final bool isVisible;

  /// Callback quando o estado muda
  final ValueChanged<bool> onVisibilityChanged;

  /// Cor do ícone
  final Color iconColor;

  /// Tamanho do ícone
  final double iconSize;

  /// Tamanho mínimo do botão
  final Size minimumSize;

  /// Padding do botão
  final EdgeInsets padding;

  const PasswordVisibilityButton({
    super.key,
    required this.isVisible,
    required this.onVisibilityChanged,
    this.iconColor = AppColors.cinza,
    this.iconSize = 20,
    this.minimumSize = const Size(48, 48),
    this.padding = EdgeInsets.zero,
  });

  @override
  State<PasswordVisibilityButton> createState() =>
      _PasswordVisibilityButtonState();
}

class _PasswordVisibilityButtonState extends State<PasswordVisibilityButton> {
  late bool _isVisible;

  @override
  void initState() {
    super.initState();
    _isVisible = widget.isVisible;
  }

  @override
  void didUpdateWidget(covariant PasswordVisibilityButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isVisible != oldWidget.isVisible) {
      _isVisible = widget.isVisible;
    }
  }

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
    widget.onVisibilityChanged(_isVisible);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _toggleVisibility,
      icon: Icon(
        _isVisible ? Icons.visibility : Icons.visibility_off,
        color: widget.iconColor,
        size: widget.iconSize,
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        splashFactory: NoSplash.splashFactory,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashRadius: 24,
      constraints: BoxConstraints(
        minWidth: widget.minimumSize.width,
        minHeight: widget.minimumSize.height,
      ),
      padding: widget.padding,
      tooltip: 'Alternar visibilidade de senha',
    );
  }
}
