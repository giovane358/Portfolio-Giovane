import 'package:flutter/material.dart';

Widget skillCard({
  required title,
  required description,
  required tags,
  required borderColor,
  required tagColor,
}) {
  return Container(
    margin: const EdgeInsets.all(12),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: borderColor, width: 2),
      borderRadius: BorderRadius.circular(16),
      color: Colors.transparent,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(fontSize: 16, color: Colors.white70),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: tags
              .map<Widget>(
                (tag) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: tagColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: tagColor),
                  ),
                  child: Text(
                    tag,
                    style: TextStyle(
                      color: tagColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    ),
  );
}
