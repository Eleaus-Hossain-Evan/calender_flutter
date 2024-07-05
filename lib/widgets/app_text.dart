import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.style,
    this.fontSize,
    this.fontWeight,
    this.color = const Color(0xff101828),
    this.height,
    this.maxLines,
    this.letterSpacing,
    this.locale,
    this.overflow,
    this.softWrap,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? height;
  final int? maxLines;
  final double? letterSpacing;
  final Locale? locale;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      locale: locale,
      overflow: overflow,
      softWrap: softWrap,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: style?.fontSize ?? fontSize,
        fontWeight: style?.fontWeight ?? fontWeight,
        color: style?.color ?? color,
        height: style?.height ?? height,
        background: style?.background,
        backgroundColor: style?.backgroundColor,
        debugLabel: style?.debugLabel,
        decoration: style?.decoration,
        decorationColor: style?.decorationColor,
        decorationStyle: style?.decorationStyle,
        decorationThickness: style?.decorationThickness,
        fontFamily: style?.fontFamily,
        fontFamilyFallback: style?.fontFamilyFallback,
        fontFeatures: style?.fontFeatures,
        letterSpacing: style?.letterSpacing ?? letterSpacing,
        locale: style?.locale,
        wordSpacing: style?.wordSpacing,
        fontStyle: style?.fontStyle,
        overflow: style?.overflow,
      ),
    );
  }
}
