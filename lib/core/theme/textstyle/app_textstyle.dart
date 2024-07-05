import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  /// headingH1Bold64px figma properties
  /// fontFamily: Inter
  /// fontSize: 64px
  /// height: 70px
  /// fontWeight: 700
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle headingH1Bold64px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 64,
    height: 1.09,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.96,
  );

  /// headingH2Semibold48px figma properties
  /// fontFamily: Inter
  /// fontSize: 48px
  /// height: 56px
  /// fontWeight: 700
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle headingH2Semibold48px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 48,
    height: 1.17,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.72,
  );

  /// headingH3Bold36px figma properties
  /// fontFamily: Inter
  /// fontSize: 36px
  /// height: 42px
  /// fontWeight: 700
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle headingH3Bold36px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 36,
    height: 1.17,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.54,
  );

  /// headingH4Bold28px figma properties
  /// fontFamily: Inter
  /// fontSize: 28px
  /// height: 36px
  /// fontWeight: 700
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle headingH4Bold28px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 28,
    height: 1.29,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.56,
  );

  /// headingH5Semibold21px figma properties
  /// fontFamily: Inter
  /// fontSize: 21px
  /// height: 28px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle headingH5Semibold21px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 21,
    height: 1.33,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.42,
  );

  /// headingH6Bold18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 22px
  /// fontWeight: 700
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle headingH6Bold18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.22,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.36,
  );

  /// titleSBold16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 24px
  /// fontWeight: 700
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleSBold16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.24,
  );

  /// titleSSemibold16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 24px
  /// fontWeight: 600
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleSSemibold16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.24,
  );

  /// titleSMedium16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 24px
  /// fontWeight: 500
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleSMedium16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.24,
  );

  /// titleSRegular16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 24px
  /// fontWeight: 400
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleSRegular16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.24,
  );

  /// titleNBold24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 36px
  /// fontWeight: 700
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static TextStyle get titleNBold24px => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 24,
        height: 1.5,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.48,
      );

  /// titleNSemibold24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 36px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleNSemibold24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.48,
  );

  /// titleNMedium24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 36px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleNMedium24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.48,
  );

  /// titleNRegular24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 36px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleNRegular24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.48,
  );

  /// titleLBold32px figma properties
  /// fontFamily: Inter
  /// fontSize: 32px
  /// height: 48px
  /// fontWeight: 700
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleLBold32px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 32,
    height: 1.5,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.64,
  );

  /// titleLSemibold32px figma properties
  /// fontFamily: Inter
  /// fontSize: 32px
  /// height: 48px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleLSemibold32px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 32,
    height: 1.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.64,
  );

  /// titleLMedium32px figma properties
  /// fontFamily: Inter
  /// fontSize: 32px
  /// height: 48px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleLMedium32px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 32,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.64,
  );

  /// titleLRegular32px figma properties
  /// fontFamily: Inter
  /// fontSize: 32px
  /// height: 48px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle titleLRegular32px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 32,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.64,
  );

  /// subtitleSSemibold14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 21px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleSSemibold14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.28,
  );

  /// subtitleSMedium14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 21px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleSMedium14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.28,
  );

  /// subtitleSRegular14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 21px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleSRegular14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.28,
  );

  /// subtitleNSemibold18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 25px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleNSemibold18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.39,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.36,
  );

  /// subtitleNMedium18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 25px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleNMedium18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.39,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.36,
  );

  /// subtitleNRegular18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 25px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleNRegular18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.39,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.36,
  );

  /// subtitleLSemibold24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 32px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleLSemibold24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.33,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.48,
  );

  /// subtitleLMedium24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 32px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleLMedium24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.33,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.48,
  );

  /// subtitleLRegular24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 32px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle subtitleLRegular24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.33,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.48,
  );

  /// bodyXSRegular12px figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 16px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyXSRegular12px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.24,
  );

  /// bodyXSMedium12px figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 16px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyXSMedium12px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.24,
  );

  /// bodyXSSemibold12px figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 16px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyXSSemibold12px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.24,
  );

  /// bodySSemibold14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 21px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodySSemibold14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.28,
  );

  /// bodySMedium14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 21px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodySMedium14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.28,
  );

  /// bodySRegular14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 21px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodySRegular14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.28,
  );

  /// bodyNSemibold16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 24px
  /// fontWeight: 600
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyNSemibold16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.24,
  );

  /// bodyNMedium16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 24px
  /// fontWeight: 500
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyNMedium16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.24,
  );

  /// bodyNRegular16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 24px
  /// fontWeight: 400
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyNRegular16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.24,
  );

  /// bodyLSemibold18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 27px
  /// fontWeight: 600
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyLSemibold18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.27,
  );

  /// bodyLMedium18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 27px
  /// fontWeight: 500
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyLMedium18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.27,
  );

  /// bodyLRegular18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 27px
  /// fontWeight: 400
  /// letterSpacing: -1.5%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle bodyLRegular18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.27,
  );

  /// labelSMedium10px figma properties
  /// fontFamily: Inter
  /// fontSize: 10px
  /// height: 12px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static TextStyle get labelSMedium10px => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 10,
        height: 1.2,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.2,
      );

  /// labelSBold10px figma properties
  /// fontFamily: Inter
  /// fontSize: 10px
  /// height: 12px
  /// fontWeight: 700
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle labelSBold10px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 10,
    height: 1.2,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.2,
  );

  /// labelNMedium12px figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 13px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static TextStyle get labelNMedium12px => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        height: 1.08,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.24,
      );

  /// labelNBold12px figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 13px
  /// fontWeight: 700
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle labelNBold12px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 1.08,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.24,
  );

  /// labelLMedium14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 15px
  /// fontWeight: 500
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle labelLMedium14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.07,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.28,
  );

  /// labelLBold14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 15px
  /// fontWeight: 700
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle labelLBold14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1.07,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.28,
  );

  /// tabSBold16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 18px
  /// fontWeight: 700
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabSBold16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.13,
    fontWeight: FontWeight.w700,
  );

  /// tabSMedium16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 18px
  /// fontWeight: 500
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabSMedium16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.13,
    fontWeight: FontWeight.w500,
  );

  /// tabSRegular16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 18px
  /// fontWeight: 400
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabSRegular16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1.13,
    fontWeight: FontWeight.w400,
  );

  /// tabNBold18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 20px
  /// fontWeight: 700
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabNBold18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.11,
    fontWeight: FontWeight.w700,
  );

  /// tabNMedium18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 20px
  /// fontWeight: 500
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabNMedium18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.11,
    fontWeight: FontWeight.w500,
  );

  /// tabNRegular18px figma properties
  /// fontFamily: Inter
  /// fontSize: 18px
  /// height: 20px
  /// fontWeight: 400
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabNRegular18px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.11,
    fontWeight: FontWeight.w400,
  );

  /// tabLBold24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 26px
  /// fontWeight: 700
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static TextStyle get tabLBold24px => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 24,
        height: 1.08,
        fontWeight: FontWeight.w700,
      );

  /// tabLMedium24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 26px
  /// fontWeight: 500
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabLMedium24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.08,
    fontWeight: FontWeight.w500,
  );

  /// tabLRegular24px figma properties
  /// fontFamily: Inter
  /// fontSize: 24px
  /// height: 26px
  /// fontWeight: 400
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static const TextStyle tabLRegular24px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.08,
    fontWeight: FontWeight.w400,
  );

  /// buttonSSemibold12px figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 12px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle buttonSSemibold12px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 1,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.24,
  );

  /// buttonSRegular12px figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 12px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle buttonSRegular12px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 1,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.24,
  );

  /// buttonNSemibold14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 14px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle buttonNSemibold14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.28,
  );

  /// buttonNRegular14px figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 14px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle buttonNRegular14px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    height: 1,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.28,
  );

  /// buttonLSemibold16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 16px
  /// fontWeight: 600
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle buttonLSemibold16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.32,
  );

  /// buttonLRegular16px figma properties
  /// fontFamily: Inter
  /// fontSize: 16px
  /// height: 16px
  /// fontWeight: 400
  /// letterSpacing: -2%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle buttonLRegular16px = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    height: 1,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.32,
  );
}
