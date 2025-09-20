/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/file.png
  AssetGenImage get file => const AssetGenImage('assets/icons/file.png');

  /// File path: assets/icons/fish-active-icon.png
  AssetGenImage get fishActiveIcon =>
      const AssetGenImage('assets/icons/fish-active-icon.png');

  /// File path: assets/icons/fish-deactive-icon.png
  AssetGenImage get fishDeactiveIcon =>
      const AssetGenImage('assets/icons/fish-deactive-icon.png');

  /// File path: assets/icons/history-active-icon.png
  AssetGenImage get historyActiveIcon =>
      const AssetGenImage('assets/icons/history-active-icon.png');

  /// File path: assets/icons/history-deactive-icon.png
  AssetGenImage get historyDeactiveIcon =>
      const AssetGenImage('assets/icons/history-deactive-icon.png');

  /// File path: assets/icons/home-active-icon.png
  AssetGenImage get homeActiveIcon =>
      const AssetGenImage('assets/icons/home-active-icon.png');

  /// File path: assets/icons/home-deactive-icon.png
  AssetGenImage get homeDeactiveIcon =>
      const AssetGenImage('assets/icons/home-deactive-icon.png');

  /// File path: assets/icons/ic-fish-aquarium.png
  AssetGenImage get icFishAquarium =>
      const AssetGenImage('assets/icons/ic-fish-aquarium.png');

  /// File path: assets/icons/ic-pool.png
  AssetGenImage get icPool => const AssetGenImage('assets/icons/ic-pool.png');

  /// File path: assets/icons/ic-two-fish.png
  AssetGenImage get icTwoFish =>
      const AssetGenImage('assets/icons/ic-two-fish.png');

  /// File path: assets/icons/ic_cs.png
  AssetGenImage get icCs => const AssetGenImage('assets/icons/ic_cs.png');

  /// File path: assets/icons/note.png
  AssetGenImage get note => const AssetGenImage('assets/icons/note.png');

  /// File path: assets/icons/search-fish.png
  AssetGenImage get searchFish =>
      const AssetGenImage('assets/icons/search-fish.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        file,
        fishActiveIcon,
        fishDeactiveIcon,
        historyActiveIcon,
        historyDeactiveIcon,
        homeActiveIcon,
        homeDeactiveIcon,
        icFishAquarium,
        icPool,
        icTwoFish,
        icCs,
        note,
        searchFish
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/file.png
  AssetGenImage get file => const AssetGenImage('assets/images/file.png');

  /// File path: assets/images/lele.jpeg
  AssetGenImage get lele => const AssetGenImage('assets/images/lele.jpeg');

  /// File path: assets/images/logo_mitra_panen.png
  AssetGenImage get logoMitraPanen =>
      const AssetGenImage('assets/images/logo_mitra_panen.png');

  /// File path: assets/images/mitra_panen_illust.png
  AssetGenImage get mitraPanenIllust =>
      const AssetGenImage('assets/images/mitra_panen_illust.png');

  /// File path: assets/images/questions.png
  AssetGenImage get questions =>
      const AssetGenImage('assets/images/questions.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [file, lele, logoMitraPanen, mitraPanenIllust, questions];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
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
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
