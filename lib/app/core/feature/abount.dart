import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/colors/colors.dart';
import 'package:portfolio_giovane/app/core/widget/build_section.dart';
import 'package:portfolio_giovane/app/core/widget/container_cards.dart';

class SobreMin extends StatelessWidget {
  final GlobalKey keySection;
  const SobreMin({super.key, required this.keySection});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      keySection: keySection,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(40),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 100,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('lib/app/core/images/photo.jpg'),
              ),
              SizedBox(height: 50),
              Text(
                'Giovane Santos',
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
              SizedBox(height: 10),
              Text(
                'Me chamo Giovane Santos, tenho 21 anos e sou apaixonado por tecnologia. '
                'Atualmente, sou estudante do 2º semestre de Engenharia de Software na Universidade Eniac, onde venho aprimorando meus conhecimentos em desenvolvimento de sistemas e arquitetura de software.\n\n'
                'Sou graduado em Técnico em Desenvolvimento de Sistemas pela ETEC Prof. Horácio Augusto da Silveira, e também em Técnico em Segurança do Trabalho pelo SENAC, o que me proporcionou uma formação multidisciplinar, aliando raciocínio lógico, pensamento crítico e responsabilidade profissional.\n\n'
                'Tenho foco em aprendizado contínuo e busco constante evolução na área de desenvolvimento, com ênfase em Back-end utilizando Java e desenvolvimento mobile com Flutter. '
                'Meu objetivo é atuar em projetos que desafiem minhas habilidades, permitam crescimento profissional e contribuam para soluções tecnológicas de impacto.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 40),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  containerCard(
                    colorText: AppColors.pingText,
                    colorTags: AppColors.purpleTagsCard,
                    tags: '1+ Anos de Experiência',
                  ),
                  containerCard(
                    colorText: AppColors.blueText,
                    colorTags: AppColors.blueback,
                    tags: 'Backend Java',
                  ),
                  containerCard(
                    colorText: AppColors.pingText,
                    colorTags: AppColors.purpleTagsCard,
                    tags: 'Mobile Flutter',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
