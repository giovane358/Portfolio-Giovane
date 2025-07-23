// build_sidebar.dart
import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/colors/colors.dart';

class NavSideBar extends StatelessWidget {
  final void Function(GlobalKey) scrollToSection;
  final GlobalKey section1;
  final GlobalKey section2;
  final GlobalKey section3;
  final GlobalKey section4;
  final GlobalKey section5;
  final GlobalKey section6;
  final String activeSection;

  const NavSideBar({
    super.key,
    required this.scrollToSection,
    required this.section1,
    required this.section2,
    required this.section3,
    required this.section4,
    required this.section5,
    required this.section6,
    required this.activeSection,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              children: const [
                SizedBox(height: 12),
                Text(
                  'Giovane Santos',
                  style: TextStyle(
                    color: AppColors.pingText,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Desenvolvedor Back-end e Mobile',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  _buildButton('Sobre Mim', section1, 'section1'),
                  SizedBox(height: 5),
                  _buildButton('Habilidades', section2, 'section2'),
                  SizedBox(height: 5),
                  _buildButton('Certificações', section3, 'section3'),
                  SizedBox(height: 5),
                  _buildButton('Projetos', section4, 'section4'),
                  SizedBox(height: 5),
                  _buildButton('Atividades GitHub', section5, 'section5'),
                  SizedBox(height: 5),
                  _buildButton('Contato', section6, 'section6'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/app/core/images/git.png',
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  'lib/app/core/images/link.png',
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  'lib/app/core/images/email.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String label, GlobalKey key, String sectionName) {
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
}
