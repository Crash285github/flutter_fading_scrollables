part of '../fading_collections.dart';

extension FadingSingleChildScrollView on SingleChildScrollView {
  Widget fade({
    final double gradientHeight = 20.0,
    bool top = true,
    bool bottom = true,
    int? frameRate,
  }) {
    assert(controller != null);

    return _FadingCollectionShader(
      top: top,
      bottom: bottom,
      gradientSize: gradientHeight,
      reverse: reverse,
      scrollDirection: scrollDirection,
      controller: controller!,
      frameRate: frameRate,
      child: this,
    );
  }
}
