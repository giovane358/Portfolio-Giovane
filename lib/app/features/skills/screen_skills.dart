import 'package:flutter/material.dart';
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
                    color: Colors.purple,
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
                        skillCardPurpel(
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
                    color: Colors.purple,
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
                        skillCardPurpel(
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
