// build_sidebar.dart
import 'package:flutter/material.dart';
import '../../app.dart';

Widget buildButton(
  String label,
  GlobalKey key,
  String sectionName,
  void Function(GlobalKey) scrollToSection,
  String activeSection,
) {
  final isActive = activeSection == sectionName;
  return TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      minimumSize: WidgetStateProperty.all<Size>(Size.fromHeight(60)),
      backgroundColor: WidgetStateProperty.all(
        isActive ? AppColors.purpleHover : Colors.transparent,
      ),
      foregroundColor: WidgetStateProperty.all(
        isActive ? Colors.white : AppColors.pingText,
      ),
      overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.hovered)) {
          return AppColors.purpleHover;
        }
        return null;
      }),
    ),
    onPressed: () => scrollToSection(key),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(label, style: const TextStyle(fontSize: 16)),
    ),
  );
}
