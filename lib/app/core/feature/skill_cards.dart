import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/colors/colors.dart';
import 'package:portfolio_giovane/app/core/widget/build_section.dart';
import 'package:portfolio_giovane/app/core/widget/container_skill_card.dart';

class SkillCards extends StatelessWidget {
  final GlobalKey keyBuild;
  const SkillCards({super.key, required this.keyBuild});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      keySection: keyBuild,
      child: Column(
        children: [
          SizedBox(height: 50),
          SizedBox(
            child: Column(
              children: [
                SizedBox(),
                Text(
                  'Soft Skills',
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
                SizedBox(height: 50),
                LayoutBuilder(
                  builder: (context, constraints) {
                    // ignore: unused_local_variable
                    final isWide = constraints.maxWidth > 700;
                    return Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        skillCardPing(
                          title: "Back-end Development",
                          description:
                              "Desenvolvimento de APIs RESTful e microsserviços robustos.",
                          tags: [
                            "Java",
                            "Spring",
                            "Spring Security",
                            "Hibernate",
                            "MySQL",
                          ],
                        ),
                        skillCardBlue(
                          title: "Mobile Development",
                          description: "Apps multiplataforma com flutter",
                          tags: [
                            "Flutter",
                            "Dart",
                            "Firebase",
                            "REST API",
                            "MySQL",
                            "Bloc",
                            "REST APIs",
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            child: Column(
              children: [
                SizedBox(),
                Text(
                  'Hard Skills',
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
                SizedBox(height: 50),
                LayoutBuilder(
                  builder: (context, constraints) {
                    // ignore: unused_local_variable
                    final isWide = constraints.maxWidth > 700;
                    return Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        skillCardPing(
                          title: "Back-end Development",
                          description:
                              "Desenvolvimento de APIs RESTful e microsserviços robustos.",
                          tags: [
                            "Java",
                            "Spring",
                            "Spring Security",
                            "Hibernate",
                            "MySQL",
                          ],
                        ),
                        skillCardBlue(
                          title: "Mobile Development",
                          description: "Apps multiplataforma com flutter",
                          tags: [
                            "Flutter",
                            "Dart",
                            "Firebase",
                            "REST API",
                            "MySQL",
                            "Bloc",
                            "REST APIs",
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
