part of 'extensions.dart';

extension StringWidgetsExtension on String {
  Image assetImage({
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit fit = BoxFit.cover,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) =>
      Image.asset(
        key: key,
        this,
        fit: fit,
        alignment: alignment,
        bundle: bundle,
        cacheHeight: cacheHeight,
        cacheWidth: cacheWidth,
        centerSlice: centerSlice,
        color: color,
        colorBlendMode: colorBlendMode,
        errorBuilder: errorBuilder,
        excludeFromSemantics: excludeFromSemantics,
        filterQuality: filterQuality,
        frameBuilder: frameBuilder,
        gaplessPlayback: gaplessPlayback,
        height: height,
        width: width,
        isAntiAlias: isAntiAlias,
        matchTextDirection: matchTextDirection,
        opacity: opacity,
        package: package,
        repeat: repeat,
        scale: scale,
        semanticLabel: semanticLabel,
      );
  Widget assetSvg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    Widget Function(BuildContext)? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Color? color,
    BlendMode colorBlendMode = ui.BlendMode.srcIn,
    bool cacheColorFilter = false,
  }) =>
      SvgPicture.asset(
        key: key,
        this,
        matchTextDirection: matchTextDirection,
        bundle: bundle,
        package: package,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        excludeFromSemantics: excludeFromSemantics,
        clipBehavior: clipBehavior,
        theme: theme,
        colorFilter: colorFilter,
        color: color,
        colorBlendMode: colorBlendMode,
        cacheColorFilter: cacheColorFilter,
      );
}
