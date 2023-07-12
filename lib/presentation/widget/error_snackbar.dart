import 'package:flutter/material.dart';

SnackBar errorSnackBar({
  required final String message,
  VoidCallback? onPressed,
}) {
  final hasButton = onPressed != null;
  return SnackBar(
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14.0,
      ),
    ),
    action: hasButton
        ? SnackBarAction(
            textColor: Colors.white,
            label: 'Retry',
            onPressed: onPressed,
          )
        : null,
    backgroundColor: Colors.red,
    showCloseIcon: !hasButton,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(8.0),
      ),
    ),
    behavior: SnackBarBehavior.fixed,
    elevation: 0.0,
    duration: const Duration(seconds: 5),
    padding: const EdgeInsets.all(16.0),
    closeIconColor: Colors.white,
  );
}
