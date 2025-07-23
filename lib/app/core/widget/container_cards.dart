import 'package:flutter/material.dart';

Widget containerCard({required tags, required colorTags, required colorText}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: colorTags,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      tags,
      style: TextStyle(color: colorText, fontWeight: FontWeight.w600),
    ),
  );
}
