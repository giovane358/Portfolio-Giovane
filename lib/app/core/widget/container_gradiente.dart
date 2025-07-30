import 'package:flutter/material.dart';
import '../../app.dart';

class ContainerGradiente extends StatelessWidget {
  final double width;
  final Widget child;
  const ContainerGradiente({
    super.key,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.blueback, AppColors.purpleback],
        ),
      ),
      child: child,
    );
  }
}
