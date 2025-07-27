import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/colors/colors.dart';
import 'package:portfolio_giovane/app/features/about/screen_about.dart';
import 'package:portfolio_giovane/app/core/widget/build_section.dart';
import 'package:portfolio_giovane/app/features/skills/screen_skills.dart';

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
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      decoration: BoxDecoration(color: AppColors.blackMain),
      child: SingleChildScrollView(
        child: Column(
          children: [
            About(keySection: section1),
            SkillCards(keyBuild: section2),
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
                          colors: [AppColors.blueback, AppColors.purpleback],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add your certifications widgets here
                ],
              ),
            ),

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
                          colors: [AppColors.blueback, AppColors.purpleback],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add your GitHub activities widgets here
                ],
              ),
            ),
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
                          colors: [AppColors.blueback, AppColors.purpleback],
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
                          colors: [AppColors.blueback, AppColors.purpleback],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 600.0, 0.0)),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add your contact widgets here
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '© 2025 Giovane Santos',
                    style: TextStyle(color: AppColors.pingText, fontSize: 12),
                  ),
                  const SizedBox(width: 28),
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
