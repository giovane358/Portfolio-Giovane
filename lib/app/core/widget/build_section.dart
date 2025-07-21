import 'package:flutter/material.dart';

class BuildSection extends StatelessWidget {
  final Key keySection;
  final Widget child;
  const BuildSection({
    super.key,
    required this.keySection,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: keySection,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      alignment: Alignment.center,
      child: child,
    );
  }
}
