import 'package:flutter/material.dart';

class ErrorButton extends StatelessWidget {
  final String message;
  final VoidCallback? onPressed;

  const ErrorButton({
    super.key,
    required this.message,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: const ButtonStyle(
        textStyle: MaterialStatePropertyAll(
          TextStyle(decoration: TextDecoration.underline),
        ),
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.refresh),
      label: Text(message),
    );
  }
}
