import 'package:calender_flutter/core/theme/color/app_colors.dart';
import 'package:calender_flutter/core/utils/assets/resources.dart';
import 'package:flutter/material.dart';

enum EventType {
  testPrep(
      'Test Prep', 'Test Preparation', AppColors.error, Images.iconTestPrep),
  practice('Practice', 'Practice', AppColors.blueLight, Images.iconEditBox),
  writing('Writing', 'Writing', AppColors.success, Images.iconEditBox),
  review('Review', 'Review', AppColors.warning, Images.iconReview);

  final String text;
  final String fullText;
  final MaterialColor color;
  final String icon;

  const EventType(this.text, this.fullText, this.color, this.icon);
}

enum Subject {
  math('Math'),
  science('Science'),
  languageArt("Language Arts"),
  socialStudies('Social Studies');

  final String text;
  const Subject(this.text);

  static Subject? fromText(String v) => switch (v) {
        'Math' => Subject.math,
        'Science' => Subject.science,
        'Language Arts' => Subject.languageArt,
        'Social Studies' => Subject.socialStudies,
        _ => null,
      };
}
