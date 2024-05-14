part of '../fading_scrollables.dart';

extension FadingListView on ListView {
  /// Fades the top and/or bottom of the ListView.
  Widget fade({
    final double gradientSize = 20.0,
    bool top = true,
    bool bottom = true,
    int? frameRate,
  }) {
    assert(controller != null);

    return _FadingScrollableShader(
      startFade: top,
      endFade: bottom,
      gradientSize: gradientSize,
      controller: controller!,
      reverse: reverse,
      scrollDirection: scrollDirection,
      frameRate: frameRate,
      child: this,
    );
  }
}
