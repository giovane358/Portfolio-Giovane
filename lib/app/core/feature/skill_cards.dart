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
          Text(
            'Habilidades',
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
          SizedBox(height: 50),
          LayoutBuilder(
            builder: (context, constraints) {
              // ignore: unused_local_variable
              final isWide = constraints.maxWidth > 700;
              return Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  skillCard(
                    title: "Back-end",
                    description:
                        "Desenvolvimento de APIs RESTful e microsserviços robustos.",
                    tags: ["Java", "Spring", "JPA", "Hibernate"],
                    borderColor: AppColors.roxoback,
                    tagColor: AppColors.roxoback,
                  ),
                  skillCard(
                    title: "Front-end",
                    description:
                        "Criação de interfaces responsivas e dinâmicas.",
                    tags: ["Flutter", "Dart", "HTML", "CSS"],
                    borderColor: AppColors.blueback,
                    tagColor: AppColors.blueback,
                  ),
                  skillCard(
                    title: "Front-end",
                    description:
                        "Criação de interfaces responsivas e dinâmicas.",
                    tags: ["Flutter", "Dart", "HTML", "CSS"],
                    borderColor: AppColors.roxoback,
                    tagColor: AppColors.roxoback,
                  ),
                  skillCard(
                    title: "Back-end",
                    description:
                        "Desenvolvimento de APIs RESTful e microsserviços robustos.",
                    tags: ["Java", "Spring", "JPA", "Hibernate"],
                    borderColor: AppColors.roxoback,
                    tagColor: AppColors.roxoback,
                  ),
                  skillCard(
                    title: "Front-end",
                    description:
                        "Criação de interfaces responsivas e dinâmicas.",
                    tags: ["Flutter", "Dart", "HTML", "CSS"],
                    borderColor: AppColors.blueback,
                    tagColor: AppColors.blueback,
                  ),
                  skillCard(
                    title: "Front-end",
                    description:
                        "Criação de interfaces responsivas e dinâmicas.",
                    tags: ["Flutter", "Dart", "HTML", "CSS"],
                    borderColor: AppColors.roxoback,
                    tagColor: AppColors.roxoback,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
