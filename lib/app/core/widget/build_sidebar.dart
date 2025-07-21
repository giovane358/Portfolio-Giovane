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

  const NavSideBar({
    super.key,
    required this.scrollToSection,
    required this.section1,
    required this.section2,
    required this.section3,
    required this.section4,
    required this.section5,
    required this.section6,
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
              children: [
                const SizedBox(height: 12),
                Text(
                  'Giovane Santos',
                  style: TextStyle(
                    color: AppColors.pingText,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Desenvolvedor',
                  style: TextStyle(color: AppColors.pingText, fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return AppColors.roxoback; // Cor ao passar o mouse
                      }
                      return null; // Usa o padrão
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.white; // Cor do texto ao passar o mouse
                      }
                      return AppColors.pingText; // Cor padrão do texto
                    }),
                  ),
                  onPressed: () => scrollToSection(section1),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sobre Mim',
                      style: TextStyle(
                        fontSize: 16,
                      ), // Remova a cor daqui para usar o style do botão
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return AppColors.roxoback; // Cor ao passar o mouse
                      }
                      return null; // Usa o padrão
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.white; // Cor do texto ao passar o mouse
                      }
                      return AppColors.pingText; // Cor padrão do texto
                    }),
                  ),
                  onPressed: () => scrollToSection(section2),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Habilidades',
                      style: TextStyle(
                        fontSize: 16,
                      ), // Remova a cor daqui para usar o style do botão
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return AppColors.roxoback; // Cor ao passar o mouse
                      }
                      return null; // Usa o padrão
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.white; // Cor do texto ao passar o mouse
                      }
                      return AppColors.pingText; // Cor padrão do texto
                    }),
                  ),
                  onPressed: () => scrollToSection(section3),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Certificações',
                      style: TextStyle(
                        fontSize: 16,
                      ), // Remova a cor daqui para usar o style do botão
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return AppColors.roxoback; // Cor ao passar o mouse
                      }
                      return null; // Usa o padrão
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.white; // Cor do texto ao passar o mouse
                      }
                      return AppColors.pingText; // Cor padrão do texto
                    }),
                  ),
                  onPressed: () => scrollToSection(section4),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Projetos',
                      style: TextStyle(
                        fontSize: 16,
                      ), // Remova a cor daqui para usar o style do botão
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return AppColors.roxoback; // Cor ao passar o mouse
                      }
                      return null; // Usa o padrão
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.white; // Cor do texto ao passar o mouse
                      }
                      return AppColors.pingText; // Cor padrão do texto
                    }),
                  ),
                  onPressed: () => scrollToSection(section5),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Atividades GitHub',
                      style: TextStyle(
                        fontSize: 16,
                      ), // Remova a cor daqui para usar o style do botão
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return AppColors.roxoback; // Cor ao passar o mouse
                      }
                      return null; // Usa o padrão
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.white; // Cor do texto ao passar o mouse
                      }
                      return AppColors.pingText; // Cor padrão do texto
                    }),
                  ),
                  onPressed: () => scrollToSection(section6),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contato',
                      style: TextStyle(
                        fontSize: 16,
                      ), // Remova a cor daqui para usar o style do botão
                    ),
                  ),
                ),
              ],
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
}
