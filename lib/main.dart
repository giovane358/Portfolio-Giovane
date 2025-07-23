import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/feature/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(Colors.purple),

          thickness: WidgetStateProperty.all(8),
          radius: Radius.circular(12),
        ),
      ),

      home: HomePage(),
    );
  }
}
