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

  /// File path: assets/icons/active_star.svg
  String get activeStar => 'assets/icons/active_star.svg';

  /// File path: assets/icons/avatar.svg
  String get avatar => 'assets/icons/avatar.svg';

  /// File path: assets/icons/call.svg
  String get call => 'assets/icons/call.svg';

  /// File path: assets/icons/comment.svg
  String get comment => 'assets/icons/comment.svg';

  /// File path: assets/icons/like.svg
  String get like => 'assets/icons/like.svg';

  /// File path: assets/icons/location.svg
  String get location => 'assets/icons/location.svg';

  /// File path: assets/icons/map.svg
  String get map => 'assets/icons/map.svg';

  /// File path: assets/icons/star.svg
  String get star => 'assets/icons/star.svg';

  /// List of all assets
  List<String> get values =>
      [activeStar, avatar, call, comment, like, location, map, star];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/gallery1.png
  AssetGenImage get gallery1 =>
      const AssetGenImage('assets/images/gallery1.png');

  /// File path: assets/images/gallery2.png
  AssetGenImage get gallery2 =>
      const AssetGenImage('assets/images/gallery2.png');

  /// File path: assets/images/gallery3.png
  AssetGenImage get gallery3 =>
      const AssetGenImage('assets/images/gallery3.png');

  /// File path: assets/images/gallery4.png
  AssetGenImage get gallery4 =>
      const AssetGenImage('assets/images/gallery4.png');

  /// File path: assets/images/post.jpg
  AssetGenImage get post => const AssetGenImage('assets/images/post.jpg');

  /// File path: assets/images/restaurant.jpg
  AssetGenImage get restaurantJpg =>
      const AssetGenImage('assets/images/restaurant.jpg');

  /// File path: assets/images/restaurant.svg
  String get restaurantSvg => 'assets/images/restaurant.svg';

  /// List of all assets
  List<dynamic> get values => [
        gallery1,
        gallery2,
        gallery3,
        gallery4,
        post,
        restaurantJpg,
        restaurantSvg
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
