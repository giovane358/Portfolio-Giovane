import 'package:flutter/material.dart';

Widget containerCard({
  required tags,
  required colorTags,
  required colorText,
  required colorHover,
}) {
  return TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      backgroundColor: WidgetStateProperty.all(colorTags),
      overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.hovered)) {
          return colorHover;
        }
        return null;
      }),
    ),
    onPressed: () {},
    child: Text(
      tags,
      style: TextStyle(color: colorText, fontWeight: FontWeight.w600),
    ),
  );
}
