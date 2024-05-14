part of '../fading_scrollables.dart';

extension FadingSingleChildScrollView on SingleChildScrollView {
  Widget fade({
    final double gradientHeight = 20.0,
    bool top = true,
    bool bottom = true,
    int? frameRate,
  }) {
    assert(controller != null);

    return _FadingScrollableShader(
      startFade: top,
      endFade: bottom,
      gradientSize: gradientHeight,
      reverse: reverse,
      scrollDirection: scrollDirection,
      controller: controller!,
      frameRate: frameRate,
      child: this,
    );
  }
}
