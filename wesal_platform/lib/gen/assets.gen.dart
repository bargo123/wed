/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Apple_logo_white.svg
  SvgGenImage get appleLogoWhite =>
      const SvgGenImage('assets/images/Apple_logo_white.svg');

  /// File path: assets/images/avatar1.jpg
  AssetGenImage get avatar1 => const AssetGenImage('assets/images/avatar1.jpg');

  /// File path: assets/images/avatar2.jpg
  AssetGenImage get avatar2 => const AssetGenImage('assets/images/avatar2.jpg');

  /// File path: assets/images/avatar3.jpg
  AssetGenImage get avatar3 => const AssetGenImage('assets/images/avatar3.jpg');

  /// File path: assets/images/avatar4.jpg
  AssetGenImage get avatar4 => const AssetGenImage('assets/images/avatar4.jpg');

  /// File path: assets/images/avatar5.jpg
  AssetGenImage get avatar5 => const AssetGenImage('assets/images/avatar5.jpg');

  /// File path: assets/images/avatar6.jpg
  AssetGenImage get avatar6 => const AssetGenImage('assets/images/avatar6.jpg');

  /// File path: assets/images/avatar7.jpg
  AssetGenImage get avatar7 => const AssetGenImage('assets/images/avatar7.jpg');

  /// File path: assets/images/camera.svg
  SvgGenImage get camera => const SvgGenImage('assets/images/camera.svg');

  /// File path: assets/images/chat_ic.svg
  SvgGenImage get chatIc => const SvgGenImage('assets/images/chat_ic.svg');

  /// File path: assets/images/chat_ic_selected.svg
  SvgGenImage get chatIcSelected =>
      const SvgGenImage('assets/images/chat_ic_selected.svg');

  /// File path: assets/images/facebook_ic.svg
  SvgGenImage get facebookIc =>
      const SvgGenImage('assets/images/facebook_ic.svg');

  /// File path: assets/images/filter_ic.svg
  SvgGenImage get filterIc => const SvgGenImage('assets/images/filter_ic.svg');

  /// File path: assets/images/gallery.svg
  SvgGenImage get gallery => const SvgGenImage('assets/images/gallery.svg');

  /// File path: assets/images/google_ic.svg
  SvgGenImage get googleIc => const SvgGenImage('assets/images/google_ic.svg');

  /// File path: assets/images/home_ic.svg
  SvgGenImage get homeIc => const SvgGenImage('assets/images/home_ic.svg');

  /// File path: assets/images/home_ic_selected.svg
  SvgGenImage get homeIcSelected =>
      const SvgGenImage('assets/images/home_ic_selected.svg');

  /// File path: assets/images/love_bg.png
  AssetGenImage get loveBg => const AssetGenImage('assets/images/love_bg.png');

  /// File path: assets/images/no_images_ic.svg
  SvgGenImage get noImagesIc =>
      const SvgGenImage('assets/images/no_images_ic.svg');

  /// File path: assets/images/profile_ic.svg
  SvgGenImage get profileIc =>
      const SvgGenImage('assets/images/profile_ic.svg');

  /// File path: assets/images/profile_ic_selected.svg
  SvgGenImage get profileIcSelected =>
      const SvgGenImage('assets/images/profile_ic_selected.svg');

  /// File path: assets/images/school.svg
  SvgGenImage get school => const SvgGenImage('assets/images/school.svg');

  /// File path: assets/images/upload_image.svg
  SvgGenImage get uploadImage =>
      const SvgGenImage('assets/images/upload_image.svg');

  /// File path: assets/images/wesal_ic.svg
  SvgGenImage get wesalIc => const SvgGenImage('assets/images/wesal_ic.svg');

  /// File path: assets/images/work_ic.svg
  SvgGenImage get workIc => const SvgGenImage('assets/images/work_ic.svg');

  /// List of all assets
  List<dynamic> get values => [
    appleLogoWhite,
    avatar1,
    avatar2,
    avatar3,
    avatar4,
    avatar5,
    avatar6,
    avatar7,
    camera,
    chatIc,
    chatIcSelected,
    facebookIc,
    filterIc,
    gallery,
    googleIc,
    homeIc,
    homeIcSelected,
    loveBg,
    noImagesIc,
    profileIc,
    profileIcSelected,
    school,
    uploadImage,
    wesalIc,
    workIc,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
