import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/widgets.dart';

import 'smooth_rectangle_border.dart';

class ClipSmoothRect extends StatelessWidget {
  const ClipSmoothRect({
    required this.child,
    super.key,
    this.radius = SmoothBorderRadius.zero,
    this.clipBehavior = Clip.antiAlias,
  });

  final SmoothBorderRadius radius;
  final Clip clipBehavior;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath.shape(
      clipBehavior: clipBehavior,
      shape: SmoothRectangleBorder(
        borderRadius: radius,
      ),
      child: child,
    );
  }
}
