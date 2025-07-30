import 'package:flutter/material.dart';
import '../../app.dart';

Widget certification({
  required imageCertificaton,
  required title,
  required enterprise,
  required year,
  required id,
  required tags,
  required link,
}) {
  return Container(
    margin: const EdgeInsets.all(12),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.blueTagsCard, width: 2),
      borderRadius: BorderRadius.circular(16),
      color: Colors.transparent,
    ),
    child: ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 380),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  padding: const EdgeInsets.all(
                    5,
                  ), // controla espessura da "borda"
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.blueback, AppColors.purpleback],
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(imageCertificaton),
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.purpleTagsCard,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  enterprise,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.blueTagsCard,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  year,
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'ID: $id',
            style: const TextStyle(fontSize: 16, color: Colors.white70),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: tags
                .map<Widget>(
                  (tag) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.purpleTagsCard),
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        color: AppColors.purpleTagsCard,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: AppColors.purpleTagsCard),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/app/assets/images/links.png',
                      color: AppColors.purpleTagsCard,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 18),
                    Text(
                      'View Certificate',
                      style: TextStyle(
                        color: AppColors.purpleTagsCard,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
