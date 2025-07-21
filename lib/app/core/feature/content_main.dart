import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/colors/colors.dart';
import 'package:portfolio_giovane/app/core/feature/abount.dart';
import 'package:portfolio_giovane/app/core/widget/build_section.dart';
import 'package:portfolio_giovane/app/core/feature/skill_cards.dart';

class ContentMain extends StatelessWidget {
  final GlobalKey section1;
  final GlobalKey section2;
  final GlobalKey section3;
  final GlobalKey section4;
  final GlobalKey section5;
  final GlobalKey section6;

  final ScrollController scrollController;

  const ContentMain({
    super.key,
    required this.section1,
    required this.section2,
    required this.section3,
    required this.section4,
    required this.section5,
    required this.section6,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 256,
      height: double.infinity,
      decoration: BoxDecoration(color: AppColors.blackMain),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SobreMin(keySection: section1),
            const SizedBox(height: 50),
            SkillCards(keyBuild: section2),
            const SizedBox(height: 50),
            BuildSection(
              keySection: section3,
              child: Column(
                children: [
                  Text(
                    'Certificações',
                    style: TextStyle(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [AppColors.blueback, AppColors.roxoback],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add your certifications widgets here
                ],
              ),
            ),
            const SizedBox(height: 50),
            BuildSection(
              keySection: section4,
              child: Column(
                children: [
                  Text(
                    'Projetos',
                    style: TextStyle(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [AppColors.blueback, AppColors.roxoback],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add your GitHub activities widgets here
                ],
              ),
            ),
            const SizedBox(height: 50),
            BuildSection(
              keySection: section5,
              child: Column(
                children: [
                  Text(
                    'Atividades no GitHub',
                    style: TextStyle(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [AppColors.blueback, AppColors.roxoback],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add your contact widgets here
                ],
              ),
            ),
            BuildSection(
              keySection: section6,
              child: Column(
                children: [
                  Text(
                    'Contato',
                    style: TextStyle(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [AppColors.blueback, AppColors.roxoback],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add your contact widgets here
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Text(
                    '© 2025 Giovane Santos',
                    style: TextStyle(color: AppColors.pingText, fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/app/core/images/email.png',
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'giovanesilvadossantos8@gmail.com',
                        style: TextStyle(
                          color: AppColors.pingText,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
