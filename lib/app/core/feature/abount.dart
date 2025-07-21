import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/widget/build_section.dart';

class SobreMin extends StatelessWidget {
  final GlobalKey keySection;
  const SobreMin({super.key, required this.keySection});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      keySection: keySection,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('lib/app/core/images/photo.jpg'),
          ),
          SizedBox(height: 50),
          Text(
            'Sobre Mim',
            style: TextStyle(
              foreground: Paint()
                ..shader = LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blue, Colors.purple],
                ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Sou um desenvolvedor apaixonado por tecnologia e inovação. '
            'Tenho experiência em desenvolvimento de software, com foco em '
            'criação de soluções eficientes e escaláveis.',
            style: TextStyle(fontSize: 16, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
