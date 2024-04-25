part of '../fading_scrollables.dart';

extension FadingGridView on GridView {
  Widget fade({
    final double gradientSize = 20.0,
    bool top = true,
    bool bottom = true,
    int? frameRate,
  }) {
    assert(controller != null);

    return _FadingScrollableShader(
      top: top,
      bottom: bottom,
      gradientSize: gradientSize,
      reverse: reverse,
      scrollDirection: scrollDirection,
      controller: controller!,
      frameRate: frameRate,
      child: this,
    );
  }
}
