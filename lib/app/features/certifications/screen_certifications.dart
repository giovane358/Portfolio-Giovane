import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/widget/build_certification.dart';
import '../../app.dart';

class SectionCertification extends StatelessWidget {
  final GlobalKey keyBuild;
  const SectionCertification({super.key, required this.keyBuild});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      keySection: keyBuild,
      child: Column(
        children: [
          SizedBox(height: 50),
          Text(
            'Certificações',
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
                runSpacing: 16,
                spacing: 16,
                children: [
                  certification(
                    imageCertificaton: 'lib/app/assets/images/photo.jpg',
                    title: 'AWS Certifield Developer - Associatre',
                    enterprise: 'Amazon Web Services',
                    year: '2025',
                    id: 'AWS-DEV-2025-03',
                    tags: [
                      'AWS Lambda',
                      'DynamoDB',
                      'S3',
                      'API Gateway',
                      'CloudFormation',
                    ],
                    link: 'link',
                  ),
                  certification(
                    imageCertificaton: 'lib/app/assets/images/photo.jpg',
                    title: 'AWS Certifield Developer - Associatre',
                    enterprise: 'Amazon Web Services',
                    year: '2025',
                    id: 'AWS-DEV-2025-03',
                    tags: ['AWS Lambda', 'DynamoDB', 'S3', 'API Gateway'],
                    link: 'link',
                  ),
                  certification(
                    imageCertificaton: 'lib/app/assets/images/photo.jpg',
                    title: 'AWS Certifield Developer - Associatre',
                    enterprise: 'Amazon Web Services',
                    year: '2025',
                    id: 'AWS-DEV-2025-03',
                    tags: ['AWS Lambda', 'DynamoDB', 'S3', 'API Gateway'],
                    link: 'link',
                  ),
                ],
              );
            },
          ),

          // Add your certification cards or widgets here
        ],
      ),
    );
  }
}
