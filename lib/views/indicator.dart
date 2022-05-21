import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  PageController controller = PageController(initialPage: 0);
  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.

  /// Defaults to `Colors.white`.
  final Color color = const Color.fromRGBO(234, 234, 234, 1);

  // The distance between the center of each dot
  static const double _kDotSpacing = 20.0;

  Widget _buildDot(int index) {
    return SizedBox(
      width: _kDotSpacing,
      child: Center(
        child: Material(
          color: controller.page != null ? controller.page!.round() == index ? const Color.fromRGBO(41, 114, 254, 1) : color : color,
          type: MaterialType.circle,
          child: SizedBox(
            width: 7.w,
            height: 7.h,
            child: InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}