import 'package:flutter/material.dart';

import 'constants.dart';



enum SnackBarType { success, error }

void showBar(BuildContext context, String message, SnackBarType type) {
  final backgroundColor = type == SnackBarType.success ? successBar : errorBar;

  final icon =
  type == SnackBarType.success ? Icons.check_circle : Icons.error_outline;

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 3),
      content: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
