part of '../fading_collections.dart';

extension FadingCustomScrollView on CustomScrollView {
  Widget fade({
    final double gradientSize = 20.0,
    bool top = true,
    bool bottom = true,
    double startOffset = 0,
    double endOffset = 0,
    int? frameRate,
  }) {
    assert(controller != null);

    return _FadingCollectionShader(
      top: top,
      bottom: bottom,
      gradientSize: gradientSize,
      reverse: reverse,
      scrollDirection: scrollDirection,
      controller: controller!,
      startOffset: startOffset,
      endOffset: endOffset,
      frameRate: frameRate,
      child: this,
    );
  }
}
